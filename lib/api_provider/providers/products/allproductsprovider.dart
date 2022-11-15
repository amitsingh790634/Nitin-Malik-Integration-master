import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:sugandh/model/allproduct_model.dart';

class AllProductsProvider {
  Dio client;

  AllProductsProvider({
    required this.client,
  });

  Future<AllProductModel> getallProductsProvider() async {
    try {
      Response r = await client.get("api/v1/products");

      if (r.statusCode == 200) {
        print(r.data);
        return allProductModelFromJson(jsonEncode(r.data));
      } else {
        return Future.error(r.data["message"]);
      }
    } on DioError catch (e) {
      print(e.response!.data);
      return Future.error(e.message);
    }
  }
}

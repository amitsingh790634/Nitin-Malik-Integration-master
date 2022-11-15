import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:sugandh/model/products_details_model.dart';

import '../../../model/product_view_model.dart';

class ProductViewProvider {
  Dio client;

  ProductViewProvider({
    required this.client,
  });

  Future<ProductDetailsModel> getProductViewProvider(
      {required String id}) async {
    try {
      Response r = await client.get("api/v1/product/$id");
      print(r.data);
      print("Helo");
      if (r.statusCode == 200) {
        print("If condition");
        return productDetailsModelFromJson(jsonEncode(r.data));
      } else {
        return Future.error(r.data);
      }
    } on DioError catch (e) {
      print("Error");
      print(e.response!.data);
      return Future.error(e.message);
    }
  }
}

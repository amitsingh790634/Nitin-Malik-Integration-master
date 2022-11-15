import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:sugandh/model/filter_model.dart';

class CategoryProvider {
  Dio client;
  CategoryProvider({required this.client});

  Future<CategoryModel> getCategory({required String id}) async {
      print('hey');

    try {
      Response response = await client.get(
        "api/v1/products?category=$id",
      );

      print(response.data['products']);

      if (response.statusCode == 200) {
        //print(response.data);
        return categoryModelFromJson(jsonEncode(response.data));
      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}

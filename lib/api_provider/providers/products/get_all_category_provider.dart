import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:sugandh/model/get_all_category_mode.dart';

class GetAllCategoryProvider {
  Dio client;

  GetAllCategoryProvider({
    required this.client,
  });

  Future<GetAllCategory> getallCategoryProvider() async {
    try {
      Response r = await client.get("api/v1/getAllCategory");

      if (r.statusCode == 201) {
        print(r.data);
        return getAllCategoryFromJson(jsonEncode(r.data));
      } else {
        return Future.error(r.data["message"]);
      }
    } on DioError catch (e) {
      print(e.response!.data);
      return Future.error(e.message);
    }
  }
}

import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sugandh/api_provider/api_client.dart';
import 'package:sugandh/common_controller/productaController/give_rating_controller.dart';
import 'package:sugandh/utils/loader.dart';
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';

class RateProductProvider {
  dio.Dio client;
  RateProductProvider({required this.client});

  Future putRateProduct(String user, String name, String rating, String comment,
      String productId) async {
    RateProductController().isLoading.value = true;
    var body = {
      "user": user,
      "name": name,
      "rating": rating,
      "comment": comment,
      "productId": productId
    };
    print(body);

    try {
      print('try');
      dio.Response response = await client.put("/api/v1/review", data: body);

      if (response.statusCode == 200) {
        RateProductController().isLoading.value = false;
        Get.back();
        Get.back();
        Get.snackbar('Success', 'Your review has been submitted');

        print(response.data);
        return null;
      } else {
        return Future.error(response.data["error"]);
      }
    } on dio.DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}

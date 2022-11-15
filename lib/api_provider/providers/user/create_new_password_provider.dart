import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'package:get/get.dart' as g;

import 'package:sugandh/api_provider/api_client.dart';
import 'package:sugandh/utils/loader.dart';
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';

class CreateNewPasswordProvider {
  Dio client;
  CreateNewPasswordProvider({required this.client});

  createNewPasswordProviderApi(
      {required String npassword,
      required String newPassword,
      required String resetToken}) async {
    CommanLoader.loader();
    var data = {
      "password": npassword,
      "confirmPassword": newPassword,
      "resetToken": resetToken
    };

    try {
      Response r = await client.post('api/v1/password/reset/', data: data);
      CommanLoader.hideLoading();

      if (r.statusCode == 200) {
        print(r.data);
        g.Get.to(() => MyDashBoard());
      } else {
        // CommanLoader.hideLoader();
        CommanLoader.message("wrong credentials");
      }
    } on DioError catch (e) {
      print(e.toString());
      CommanLoader.hideLoading();
      CommanLoader.message(e.response!.data['msg']);
    }
  }
}

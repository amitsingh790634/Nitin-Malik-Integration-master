import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart' as g;
import 'package:sugandh/utils/loader.dart';
import 'package:sugandh/views/Password/create_new_password.dart';
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';

class OtpForgetPasswordProvider {
  Dio client;
  OtpForgetPasswordProvider({required this.client});

  OtpForgetPasswordApi(String phone, String otp) async {
    try {
      CommanLoader.loader();
      var data = {"otp": otp, "phone": phone};
      Response r = await client.post("api/v1/password/verify-otp", data: data);

      CommanLoader.hideLoading();
      if (r.statusCode == 200) {
        print(r.data);
        print('Otp sucessfully');
        g.Get.to(() => CreateNewPassword(), arguments: r.data["resetToken"]);
      } else {
        CommanLoader.showErrorDialog(description: r.data['error']);
      }
    } on DioError catch (e) {
      // CommanLoader.hideLoading();
      // CommanLoader.message(e.response!.data['msg']);
      log(e.response!.data.toString());
      CommanLoader.hideLoading();
    }
  }
}

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart' as g;
import 'package:sugandh/utils/loader.dart';
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';

class RegisterVerificationEndPoint {
  Dio client;
  RegisterVerificationEndPoint({required this.client});

  registerVerifyOtp(String phone, String otp) async {
    try {
      CommanLoader.loader();
      var data = {
        "phone": phone,
        "otp": otp,
      };
      Response r = await client.post("api/v1/verifyRegistration", data: data);

      CommanLoader.hideLoading();
      if (r.statusCode == 201) {
        print(r.data);
        print('Otp sucessfully');
        g.Get.to(() => MyDashBoard());
        g.Get.snackbar("Welcome", "Account Created Succesfully",
            icon: Icon(
              Icons.phone,
              color: Colors.green,
            ));
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

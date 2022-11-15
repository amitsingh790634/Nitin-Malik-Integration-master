import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;
import 'package:sugandh/utils/loader.dart';
import 'package:sugandh/views/otp_screens/otp_page.dart';

class RegisterEndPoint {
  Dio client;
  RegisterEndPoint({required this.client});

  registerApi(
      {required String name,
      required String phone,
      required String password}) async {
    CommanLoader.loader();
    var data = {"name": name, "phone": phone, "password": password};
    try {
      Response r = await client.post('api/v1/register', data: data);

      CommanLoader.hideLoading();

      if (r.statusCode == 201) {
        print(r.data);
        g.Get.to(() => OTPScreen());
        g.Get.snackbar("Welcome", "Otp sent to your phone",
            icon: Icon(
              Icons.phone,
              color: Colors.green,
            ));

        print("created Account");
      } else {
        CommanLoader.message(r.data['msg']);
      }
    } on DioError catch (err) {
      log(err.response!.data.toString());
      CommanLoader.hideLoading();
    }
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'package:get/get.dart' as g;

import 'package:sugandh/api_provider/api_client.dart';
import 'package:sugandh/utils/loader.dart';
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';

class LoginProvider {
  Dio client;
  LoginProvider({required this.client});

  LoginApi({required String phone, required String pass}) async {
    CommanLoader.loader();
    var data = {"phone": phone, "password": pass};

    try {
      Response r = await client.post('api/v1/login', data: data);
      CommanLoader.hideLoading();

      print(phone);
      print(pass);
      // print(r.statusCode);
      // print(r.data);

      if (r.statusCode == 200) {
        print(r.data);
        g.Get.to(() => MyDashBoard());
        g.Get.snackbar("Welcome", "Continue Shoping",
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.green,
            ));
        _saveToken(r.data["token"]);
        // Client.token = r.data["data"]["token"];
        // GetStorage box = GetStorage();
        // await box.write("token", Client.token);
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

  _saveToken(String token) {
    GetStorage box = GetStorage();
    box.write("token", token);
  }
}

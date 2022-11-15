import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:sugandh/api_provider/providers/user/auth_endpoint.dart';

import '../../api_provider/api_client.dart';

class CreateAccountController extends GetxController {
  GlobalKey<FormState> signUpkey = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void onInit() {
    name;
    phone;
    password;
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    password.dispose();
    phone.dispose();
    super.dispose();
  }

  String? namevalidate(value) {
    if (value == '') {
      return 'enter your User Name';
    }
    return null;
  }

  String? phonevalidate(value) {
    if (value == '') {
      return 'enter your Phone Number';
    }
    return null;
  }

  String? passwordvalidation(value) {
    if (value == '') {
      return 'enter your password';
    }
    return null;
  }

  checklogin() {
    final isvalidate = signUpkey.currentState!.validate();
    if (!isvalidate) {
      return;
    } else {
      callLoginApi();
    }
    signUpkey.currentState!.save();
  }

  callLoginApi() {
    Client _client = Client();
    RegisterEndPoint _register = RegisterEndPoint(client: _client.init());
    _register.registerApi(
        name: name.text, password: password.text, phone: phone.text);
  }
}

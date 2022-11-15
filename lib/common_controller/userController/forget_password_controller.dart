import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sugandh/api_provider/providers/user/forget_password_provoder.dart';

import '../../api_provider/api_client.dart';

class ForgetPasswordController extends GetxController {
  GlobalKey<FormState> fpasswordkey = GlobalKey();

  TextEditingController forgetphone = TextEditingController();

  String? phonevalidate(value) {
    if (value == '') {
      return 'enter your Mobile';
    }
    return null;
  }

  // String? passwordvalidation(value) {
  //   if (value == '') {
  //     return 'enter your password';
  //   }
  //   return null;
  // }

  checkforgetPassword() {
    final isvalidate = fpasswordkey.currentState!.validate();
    if (!isvalidate) {
      return;
    } else {
      CallforgetPasswordProviderApi();
    }
    fpasswordkey.currentState!.save();
  }

  CallforgetPasswordProviderApi() {
    Client _client = Client();
    ForgetPasswordProvider _ForgetPasswordProvider =
        ForgetPasswordProvider(client: _client.init());
    _ForgetPasswordProvider.ForgetPasswordProviderApi(phone: forgetphone.text);
  }
}

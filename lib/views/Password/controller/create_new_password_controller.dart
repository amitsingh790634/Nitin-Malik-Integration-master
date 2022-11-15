import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../api_provider/api_client.dart';
import '../../../api_provider/providers/user/create_new_password_provider.dart';

class CreateNewPasswordController extends GetxController {
  String resetToken = Get.arguments;

  GlobalKey<FormState> newpasskey = GlobalKey();
  TextEditingController passnew = TextEditingController();
  TextEditingController passconfirm = TextEditingController();

  callResetApi() {
    Client _client = Client();
    CreateNewPasswordProvider _createNewPasswordProvider =
        CreateNewPasswordProvider(client: _client.init());
    _createNewPasswordProvider.createNewPasswordProviderApi(
        npassword: passnew.text,
        newPassword: passconfirm.text,
        resetToken: resetToken);
  }
}

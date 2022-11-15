import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sugandh/api_provider/api_client.dart';

import '../../api_provider/providers/user/edit_profile_provider.dart';

class EditProfileController extends GetxController {
  RxBool isLoading = false.obs;
  GlobalKey<FormState> editProfileKey = GlobalKey();
  TextEditingController namecont = TextEditingController();
  TextEditingController emailcont = TextEditingController();
  TextEditingController phonecont = TextEditingController();

  callEditProfile() async {
    Client client = Client();
    final isvalidate = editProfileKey.currentState!.validate();
    if (!isvalidate) {
      return;
    } else {
      EditProfileProvider(client: client.init())
          .editProfile(namecont.text, emailcont.text, phonecont.text);
    }
    editProfileKey.currentState!.save();
  }

  String? namevalidate(value) {
    if (value == '') {
      return 'enter your User Name';
    }
    return null;
  }

  String? emailvalidate(value) {
    if (value == '') {
      return 'enter your Email ';
    }
    return null;
  }

  String? phonevalidation(value) {
    if (value == '') {
      return 'enter your Phone';
    }
    return null;
  }

  @override
  void onInit() {
    namecont;
    emailcont;
    phonecont;
    super.onInit();
  }

  @override
  void onClose() {
    namecont.dispose();
    emailcont.dispose();

    phonecont.dispose();
    EditProfileController().dispose();

    super.onClose();
  }
}

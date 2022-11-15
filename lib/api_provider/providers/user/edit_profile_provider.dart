import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;

import '../../../common_controller/userController/edit_profile_controller.dart';

class EditProfileProvider {
  dio.Dio client;
  EditProfileProvider({required this.client});

  Future editProfile(String name, String email, String number) async {
    EditProfileController().isLoading.value = true;
    // RateProductController().isLoading.value = true;
    Map body = {
      "name": name,
      "email": email,
      "phone": number,
    };

    try {
      dio.Response response = await client.put("api/v1/me/update", data: body);

      if (response.statusCode == 200) {
        print(Response());
        Get.back();
        Get.snackbar('Success', 'Profile has been updated successfully');

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

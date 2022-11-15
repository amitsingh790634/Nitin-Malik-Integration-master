import 'package:get/get.dart';

import 'package:sugandh/api_provider/api_client.dart';
import 'package:sugandh/api_provider/providers/products/get_all_category_provider.dart';

import 'package:sugandh/model/get_all_category_mode.dart';

class GetAllCatagoryController extends GetxController
    with StateMixin<GetAllCategory> {
  callGetAllCategoryApi() {
    Client cclient = Client();
    GetAllCategoryProvider productsProvider =
        GetAllCategoryProvider(client: cclient.init());
    try {
      productsProvider.getallCategoryProvider().then(
        (value) {
          change(value, status: RxStatus.success());
        },
      );
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() {
    callGetAllCategoryApi();
    super.onInit();
  }
}

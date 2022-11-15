import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../api_provider/api_client.dart';
import '../../api_provider/providers/products/add_cart_provider.dart';

class AddProductController extends GetxController {
  late String id;
  RxBool isPause = false.obs;
 
  AddProductCartApi(id) {
    Client client = Client();
    AddProductCartProvider addProductcart =
        AddProductCartProvider(Client: client.init());
    try {
      addProductcart.addtocart(id: id).then((value) {
        Get.snackbar('Success', 'Product add to cart Successfully');
        // change(value, status: RxStatus.success());
      }, onError: (err) {
        // change(null, status: RxStatus.error(err.toString()));
      });
    } catch (e) {
      // change(null, status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() {
    // callDetailProductApi();
    super.onInit();
  }
}

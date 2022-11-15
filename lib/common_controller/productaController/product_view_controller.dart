import 'dart:ffi';

import 'package:get/get.dart';
import 'package:sugandh/api_provider/api_client.dart';
import 'package:sugandh/api_provider/providers/products/products_details_provider.dart';
import 'package:sugandh/model/product_view_model.dart';

import '../../model/products_details_model.dart';

class ProductViewController extends GetxController
    with StateMixin<ProductDetailsModel> {
  RxBool isLoading = false.obs;
  String id = Get.arguments;

  productViewApi() {
    Client client = Client();
    ProductViewProvider productViewProvider =
        ProductViewProvider(client: client.init());
    productViewProvider.getProductViewProvider(id: id).then((value) {
      change(value, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  @override
  void onInit() {
    productViewApi();

    // TODO: implement onInit
    super.onInit();
  }
}

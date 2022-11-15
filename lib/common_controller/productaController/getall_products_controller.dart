import 'package:get/get.dart';

import 'package:sugandh/api_provider/api_client.dart';
import 'package:sugandh/model/allproduct_model.dart';

import '../../api_provider/providers/products/allproductsprovider.dart';

class AllProductsController extends GetxController
    with StateMixin<AllProductModel> {
  List<Image> img = List<Image>.empty().obs;

  late Rx<AllProductModel> name;
  late Rx<AllProductModel> description;
  late Rx<AllProductModel> price;
  late Rx<AllProductModel> url;
  late Rx<AllProductModel> ratings;

  callGetAllProductsApi() {
    Client cclient = Client();
    AllProductsProvider productsProvider =
        AllProductsProvider(client: cclient.init());
    try {
      productsProvider.getallProductsProvider().then((value) {
        change(value, status: RxStatus.success());
      }, onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      });
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() {
    callGetAllProductsApi();
    super.onInit();
  }
}

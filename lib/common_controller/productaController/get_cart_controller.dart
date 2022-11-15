import 'package:get/get.dart';

import '../../api_provider/api_client.dart';
import '../../api_provider/providers/products/get_cart_provider.dart';
import '../../model/product_cart_model.dart';

class CartController extends GetxController with StateMixin<ProductCartModel> {
  getCartApi() {
    Client client = Client();
    CartProductProvider getCartProduct = CartProductProvider(Client: client.init());
    // SearchProvider searchProvider = SearchProvider(client: client.init());
    try {
      // detailProductProvider.getProductDetails(id: id)
      getCartProduct.getCart().then((value) {
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
    getCartApi();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    getCartApi();
    // TODO: implement onClose
    super.onClose();
  }
}

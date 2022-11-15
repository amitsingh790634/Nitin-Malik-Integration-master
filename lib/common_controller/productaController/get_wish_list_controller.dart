import 'package:get/get.dart';
import 'package:sugandh/api_provider/api_client.dart';
import 'package:sugandh/api_provider/providers/products/get_wish_list_provider.dart';

import '../../model/my_wishlist_model.dart';

class MyWishlistController extends GetxController
    with StateMixin<MyWishlistModel> {
  RxBool isLoading = false.obs;
  // ignore: non_constant_identifier_names
  MyWishlist() {
    Client client = Client();
    MyWishlistProvider myWishlistProvider =
        MyWishlistProvider(client: client.init());
    try {
      myWishlistProvider.getMyWishlist().then((value) {
        change(value, status: RxStatus.success());
      }, onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      });
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
    // Client client = Client();
    // APIServices allProducts = APIServices(client: client.init());
    // Client client = Client();
  }

  @override
  void onInit() {
    MyWishlist();
    super.onInit();
  }
}

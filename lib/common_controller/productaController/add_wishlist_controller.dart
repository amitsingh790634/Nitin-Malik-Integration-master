import 'package:get/get.dart';
import 'package:sugandh/api_provider/api_client.dart';
import 'package:sugandh/api_provider/providers/products/add_wishlist_provider.dart';

import '../../api_provider/providers/products/remove_wishlist_provider.dart';

class AddWishlistController extends GetxController {
  late String id;
  // late Rx<ViewStoryModel> title;
  // late Rx<ViewStoryModel> description;
  RxBool isPause = false.obs;
  // late Rx<SearchModel> filteredProductsCount;
  //List<ViewStoryModel> story = [];
  //late Rx<ViewStoryModel> storyAudio;

  callAddWishlistApi(id) {
    Client client = Client();
    AddWishlistProvider addWishlistProvider =
        AddWishlistProvider(client: client.init());
    try {
      print('addd wish');
      addWishlistProvider.addWishlist(id: id).then((value) {
        // Get.snackbar('Success', 'Product added to wishlist Successfully');

        // change(value, status: RxStatus.success());
      }, onError: (err) {
        // change(null, status: RxStatus.error(err.toString()));
      });
    } catch (e) {
      // change(null, status: RxStatus.error(e.toString()));
    }
  }

  callRemoveWishlistApi(id) {
    Client client = Client();
    RemoveWishlistProvider removeWishlistProvider =
        RemoveWishlistProvider(client: client.init());
    try {
      print('object');
      removeWishlistProvider.removeWishlist(id: id).then((value) {
        // Get.snackbar('Success', 'Product added to wishlist Successfully');
        isPause = false.obs;
        print('removed');
        // Get.snackbar('Success', 'Product added to wishlist Successfully');
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

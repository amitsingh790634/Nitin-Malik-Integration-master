import 'package:get/get.dart';
import 'package:sugandh/api_provider/api_client.dart';
import 'package:sugandh/api_provider/providers/products/get_rating_provider.dart';
import 'package:sugandh/common_controller/productaController/product_view_controller.dart';

import '../../model/all_rating_model.dart';

class AllRatingController extends GetxController
    with StateMixin<AllRatingModel> {
  ProductViewController productViewController = Get.find();
  // late Rx<AllRatingModel> rating;
  // String id = Get.arguments;
  // late Rx<ViewStoryModel> storyImg;
  // late Rx<ViewStoryModel> title;
  // late Rx<ViewStoryModel> description;
  RxBool isPause = false.obs;
  // late Rx<SearchModel> filteredProductsCount;
  //List<ViewStoryModel> story = [];
  //late Rx<ViewStoryModel> storyAudio;

  callAllRatingApi() {
    Client client = Client();
    AllRatingProvider allRatingProvider =
        AllRatingProvider(client: client.init());
    try {
      // detailProductProvider.getProductDetails(id: id)
      allRatingProvider
          .getRatingDetails(id: productViewController.id.toString())
          .then((value) {
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
    callAllRatingApi();
    super.onInit();
  }
}

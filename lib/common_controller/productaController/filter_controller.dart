import 'package:get/get.dart';
import 'package:sugandh/api_provider/api_client.dart';
import 'package:sugandh/api_provider/providers/products/filter_provider.dart';
import 'package:sugandh/model/filter_model.dart';

class ViewCategoryController extends GetxController
    with StateMixin<CategoryModel> {
  String id = Get.arguments;

  RxBool isPause = false.obs;

  callViewCategoryApi() {
    Client client = Client();
    CategoryProvider viewCategoryProvider =
        CategoryProvider(client: client.init());
    try {
      // detailProductProvider.getProductDetails(id: id)
      viewCategoryProvider.getCategory(id: id).then((value) {
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
    callViewCategoryApi();
    // callDetailProductApi();
    super.onInit();
  }
}

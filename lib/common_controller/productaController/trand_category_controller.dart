import 'package:get/get.dart';
import 'package:sugandh/api_provider/api_client.dart';
import 'package:sugandh/api_provider/providers/products/trand_category_provider.dart';
import 'package:sugandh/model/trand_category_model.dart';

class TrandCategoryController extends GetxController  with StateMixin<TrandCategoryModel>{
  TrandCategoryApi() {
    Client client = Client();

    TrandCategoryProvider trandCategoryProvider =
        TrandCategoryProvider(Client: client.init());
    try {
      trandCategoryProvider.getTrandCategory().then((value) {
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
    TrandCategoryApi();
    // callSearchApi();
    super.onInit();
  }
}

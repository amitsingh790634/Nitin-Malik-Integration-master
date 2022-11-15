import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sugandh/model/searchmodel.dart';

import '../../api_provider/api_client.dart';
import '../../api_provider/providers/products/search_provider.dart';

class SearchController extends GetxController with StateMixin<SearchModel> {
  RxBool isLoading = false.obs;
  TextEditingController value1 = TextEditingController();

  RxBool isPause = false.obs;
  ScrollController scrollController = ScrollController();

  callSearchApi() {
    Client client = Client();
    SearchProvider searchProvider = SearchProvider(client: client.init());
    try {
      // detailProductProvider.getProductDetails(id: id)
      searchProvider.getSearch(value: value1.text).then((value) {
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
    callSearchApi();
    super.onInit();
  }
}

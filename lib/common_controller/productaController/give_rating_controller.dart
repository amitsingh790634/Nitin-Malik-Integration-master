import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sugandh/api_provider/api_client.dart';
import 'package:sugandh/api_provider/providers/products/give_rating_privider.dart';
import 'package:sugandh/common_controller/productaController/product_view_controller.dart';
import 'package:sugandh/common_controller/userController/login_controller.dart';
import 'package:sugandh/views/RateProduct/rate_product.dart';

class RateProductController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController comment = TextEditingController();
  var rating;
  ProductViewController productViewController = Get.find();
  // var productId = detailProductController.id;

  RateProduct() async {
    Client client = Client();
    final prefs = await SharedPreferences.getInstance();
    final key = 'user';
    var user = prefs.getString(key);
    final key2 = 'name';
    var name = prefs.getString(key2);

    RateProductProvider(client: client.init()).putRateProduct(
        user.toString(),
        name.toString(),
        rating.toString(),
        comment.text,
        productViewController.id.toString());
  }
}
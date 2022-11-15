import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../model/my_wishlist_model.dart';

class MyWishlistProvider {
  // late Dio client;

  // Future<AllProductsModel> allProducts() async {
  //   var res = await http
  //       .get(Uri.parse('https://ecom-flyweis.herokuapp.com/api/v1/products'));

  //   if (res.statusCode == 200) {
  //     return allProductsModelFromJson(jsonEncode(res.body['products']));
  //   }
  // }
  Dio client;
  // late AllProductsProvider();
  MyWishlistProvider({required this.client});

  Future<MyWishlistModel> getMyWishlist() async {
    try {
      Response response = await client.get("api/v1/wishlist/me");
      print(response);
      print("Hello");

      if (response.statusCode == 200) {
        print("Hey");
        return myWishlistModelFromJson(jsonEncode(response.data));
      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      print(e.response!.data);
      print('error');
      return Future.error(e.message);
    }
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart ' as g;

class AddWishlistProvider {
  Dio client;
  AddWishlistProvider({required this.client});

  addWishlist({required String id}) async {
    var body = {"product": id};
    try {
      print('try');
      Response response = await client.post("api/v1/add/wishlist", data: body);
      print(response.data);

      if (response.statusCode == 200) {
        print('if');
        g.Get.snackbar('Success', 'Product added to wishlist Successfully');
        print(response.data);

        //print(response.data);

      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      print('error');
      print(e);
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}

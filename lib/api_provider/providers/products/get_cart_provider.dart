import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../model/product_cart_model.dart';

class CartProductProvider {
  Dio Client;
  CartProductProvider({required this.Client});
  Future<ProductCartModel> getCart() async {
    try {
      print('in tey');
      Response response = await Client.get('api/v1/cart');
      if (response.statusCode == 200) {
        print('sussess get cart');
        return productCartModelFromJson(jsonEncode(response.data));
      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }

  
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
// import 'package:get/get.dart' as g;
// import 'package:sugandh/model/place_order_model.dart';
// import 'package:sugandh/views/check_out_screens/check_out_address.dart';

import '../../../common_controller/productaController/place_order_controller.dart';

late int amtP;
late String oidP;

class PlaceOrderProvider {
  // int? amt;
  // String? oid;

  Dio Client;

  PlaceOrderProvider({required this.Client});

  // PlaceOrderController _placrOrderController =
  //   g.Get.put(PlaceOrderController());

  Future PlaceOrderApi() async {
    try {
      Response response = await Client.post('api/v1/order/place-order');
      print('provider try');

      if (response.statusCode == 200) {
        // CheckoutAddress().openCheckout(data: response.data);
        // print(jsonEncode(response.data));
        print(response.data);
        amtP = response.data['amount'];
        oidP = response.data['orderId'];

        print(oidP);
        return null;
        // forMap().setamt = response.data['amount'];
        // print(response.data['amount']);
        // print(forMap().getamt);

        // forMap().setoid = response.data['orderId'];
        // print(forMap().getoid);
      } else {
        print('else');
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      print(e.response!.data);
      print('catch');
      return Future.error(e.message);
    }
  }
}

class forMap {
  // Creating a Field/Property
  late String oid;
  late int amt;

  // Creating the getter method
  // to get input from Field/Property
  String get getoid {
    return oid;
  }

  int get getamt {
    return amt;
  }

  // Creating the setter method
  // to set the input in Field/Property
  set setoid(String name) {
    oid = name;
  }

  set setamt(int num) {
    amt = num;
  }
}

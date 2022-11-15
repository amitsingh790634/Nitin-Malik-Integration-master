import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:sugandh/model/place_order_model.dart';

import '../../api_provider/api_client.dart';
import '../../api_provider/providers/products/place_order_provider.dart';
// import '../../model/place_order_model.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';

class PlaceOrderController extends GetxController with StateMixin<PlaceOrderModel> {
  RxBool isPause = false.obs;

  Razorpay? razorpay;


  callPlaceOrdercontroller() {
    Client client = Client();

    PlaceOrderProvider placeOrderProvider = PlaceOrderProvider(
      Client: client.init(),
    );
    print('bruv');

    // SearchProvider searchProvider = SearchProvider(client: client.init());
    try {
      print('controller try');
      // detailProductProvider.getProductDetails(id: id)
      placeOrderProvider.PlaceOrderApi().then((value) {
        // openCheckout();
        change(value, status: RxStatus.success());
      }, onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      });
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }

   void _handlePaymentSuccess(PaymentSuccessResponse response) {}

  void _handlePaymentError(PaymentFailureResponse response) {}

  void _handleExternalWallet(ExternalWalletResponse response) {}




  @override
  void onInit() {
    // callPlaceOrdercontroller();
    razorpay = Razorpay();
    razorpay!.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    razorpay!.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    razorpay!.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    // callSearchApi();
    super.onInit();
  }
}

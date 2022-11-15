import 'package:dio/dio.dart';
import 'package:sugandh/common_controller/productaController/place_order_controller.dart';
// import 'package:get/get.dart' as h;
// import 'package:get/get.dart' as h;

// import '../../../common_controller/productaController/place_order_controller.dart';
// import '../../../model/checkout_address_model.dart';

class CheckoutAddProvider {
  Dio Client;
  CheckoutAddProvider({required this.Client});
  // PlaceOrderController _placrOrderController =
  //     h.Get.put(PlaceOrderController());

  // Future<CheckoutAddressModel>
  checkoutAddressAPI(
      {required String street1,
      required String street2,
      required String city,
      required String state2,
      required String country}) async {
    Map body = {
      "street1": street1,
      "street2": street2,
      "city": city,
      "state": state2,
      "country": country,
    };
    try {
      print(body);

      Response response =
          await Client.post('api/v1/order/checkout', data: body);

      if (response.statusCode == 200) {
        
        PlaceOrderController().callPlaceOrdercontroller();

        print('hellooooooo');
        // print(response.data);
        // return checkoutAddressModelFromJson(jsonEncode(response.data));

        //print(response.data);

      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}

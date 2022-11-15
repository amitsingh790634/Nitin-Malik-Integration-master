import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:sugandh/api_provider/providers/products/place_order_provider.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:circle_checkbox/redev_checkbox.dart';

import '../../common_controller/productaController/place_order_controller.dart';
import 'check_out_payment.dart';
import 'checkbox_controller.dart';
import 'checkout_address_controller.dart';

class CheckoutAddress extends StatelessWidget {
  CheckoutAddress({Key? key}) : super(key: key);
  Checkbox1 _checkbox1 = Get.put(Checkbox1());
  CheckoutAddressController _checkoutAddressController =
      Get.put(CheckoutAddressController());
  PlaceOrderController _placrOrderController = Get.put(PlaceOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: TextStyle(fontSize: 19, color: appthemColor),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 22,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _checkoutAddressController.Checkaddressform,
            child: Column(
              children: [
                3.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PhysicalModel(
                      color: Colors.white,
                      elevation: 2,
                      shape: BoxShape.circle,
                      child: Container(
                        height: 3.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 3.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                            color: appthemColor,
                            shape: BoxShape.circle,
                          ),
                        ).p4(),
                      ),
                    ),
                    Container(
                      height: 0.2.h,
                      width: 36.w,
                      color: Colors.black,
                    ),
                    PhysicalModel(
                      color: Colors.white,
                      elevation: 2,
                      shape: BoxShape.circle,
                      child: Container(
                        height: 3.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 3.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ).p4(),
                      ),
                    ),
                    Container(
                      height: 0.2.h,
                      width: 36.w,
                      color: Colors.black,
                    ),
                    PhysicalModel(
                      color: Colors.white,
                      elevation: 2,
                      shape: BoxShape.circle,
                      child: Container(
                        height: 3.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 3.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ).p4(),
                      ),
                    ),
                  ],
                ).pSymmetric(h: 4.w),
                2.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Address',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      'Payment',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      'Summary',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ).pSymmetric(h: 4.w),
                2.h.heightBox,
                Obx(
                  () => CircleCheckboxListTile(
                    activeColor: appthemColor,
                    title: const Text(
                      'Billing address is the same as delivery',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _checkbox1.value1.value,
                    onChanged: _checkbox1.value1,
                    //secondary: const Icon(Icons.hourglass_empty),
                  ),
                ),
                1.h.heightBox,
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Street 1',
                      style: TextStyle(fontSize: 10),
                    )).pSymmetric(h: 4.w),
                TextFormField(
                  validator: _checkoutAddressController.validatestreet1,
                  controller: _checkoutAddressController.Street1,
                  decoration: InputDecoration(
                    hintText: 'Street ,Lane',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                3.h.heightBox,
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Street 1',
                      style: TextStyle(fontSize: 10),
                    )).pSymmetric(h: 4.w),
                TextFormField(
                  validator: _checkoutAddressController.validatestreet2,
                  controller: _checkoutAddressController.street2,
                  decoration: InputDecoration(
                    hintText: 'XYZ Road',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                3.h.heightBox,
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'City',
                      style: TextStyle(fontSize: 10),
                    )).pSymmetric(h: 4.w),
                TextFormField(
                  validator: _checkoutAddressController.validatecity,
                  controller: _checkoutAddressController.city,
                  decoration: InputDecoration(
                    hintText: 'Delhi',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                3.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'State',
                          style: TextStyle(fontSize: 10),
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Country',
                          style: TextStyle(fontSize: 10),
                        )).pSymmetric(h: 34.w),
                  ],
                ).pSymmetric(h: 4.w),
                Row(
                  children: [
                    Container(
                      width: 50.w,
                      child: TextFormField(
                        validator: _checkoutAddressController.validatestate,
                        controller: _checkoutAddressController.state2,
                        decoration: InputDecoration(
                          hintText: 'Delhi',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 0.5),
                          ),
                        ),
                      ).pSymmetric(h: 4.w),
                    ),
                    Container(
                      width: 50.w,
                      child: TextFormField(
                        validator: _checkoutAddressController.validateCountry,
                        controller: _checkoutAddressController.Country,
                        decoration: InputDecoration(
                          hintText: 'India',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 0.5),
                          ),
                        ),
                      ).pSymmetric(h: 4.w),
                    ),
                  ],
                ),
                5.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Padding(
                    //   padding: EdgeInsets.only(bottom: 2.h),
                    //   child: Container(
                    //     height: 52,
                    //     width: 170,
                    //     decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       border: Border.all(color: Colors.black),
                    //       borderRadius: BorderRadius.circular(4.sp),
                    //     ),
                    //     child: 'BACK'
                    //         .text
                    //         .size(10.sp)
                    //         .letterSpacing(1.5)
                    //         .bold
                    //         .black
                    //         .make()
                    //         .centered(),
                    //   ).onTap(() {
                    //     Get.back();

                    //     //_signupController.CheckSignup();
                    //     //Get.to(()=> CheckoutScreen());
                    //     //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                    //   }),
                    // ),
                    Center(
                      child: Container(
                        height: 52,
                        width: 170,
                        decoration: BoxDecoration(
                          color: appthemColor,
                          borderRadius: BorderRadius.circular(15.sp),
                        ),
                        child: 'NEXT'
                            .text
                            .size(10.sp)
                            .letterSpacing(1.5)
                            .bold
                            .white
                            .make()
                            .centered(),
                      ).onTap(() async {
                        await _checkoutAddressController
                            .callcheckoutController();

                        print(
                            '**********************************************************************************************************************');

                        openCheckout(oid: oidP, amt: amtP);
                        // _placrOrderController.callPlaceOrdercontroller();
                        // Get.to(() => CheckOutPayment());
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                      }),
                    ),
                  ],
                ).pSymmetric(h: 4.w),
                1.h.heightBox,
                0.5.h.heightBox,
                0.5.h.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }

  PlaceOrderController placrOrderController = Get.find();
  void openCheckout({required String oid, required int amt}) async {
    Map data = {'amount': amt, 'orderId': oid};
    var options = {
      'key': 'rzp_test_O3IfyLgabq3qhB',
      'amount': data['amount'],
      'name': 'Shaiq',
      'description': 'Payment',
      'orderId': data['orderId'],
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      placrOrderController.razorpay!.open(options);

      // razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }
}

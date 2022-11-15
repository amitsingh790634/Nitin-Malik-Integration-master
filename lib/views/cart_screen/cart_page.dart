import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/views/check_out_screens/check_out_address.dart';
import 'package:sugandh/views/payment/payment_screens.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../common_controller/productaController/get_cart_controller.dart';
import '../../model/product_cart_model.dart';
import "package:flutter/src/widgets/image.dart" as image;

class CartPage extends  GetView<ProductCartModel> with WidgetsBindingObserver {
  CartController getcartcontroller = Get.put(CartController());
   CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 15,
            )),
        title: Text(
          'Shopping Cart',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 19),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            1.h.heightBox,
            Container(
              padding: EdgeInsets.all(8.sp),
              height: 55.h,
              child: getcartcontroller.obx((state) =>ListView.builder(
                itemCount: state!.cart.products.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(6.sp),
                    child: Container(
                      width: 100.w,
                      height: 16.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 28.w,
                            decoration: BoxDecoration(
                              // border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                                child: image.Image.asset(
                              'lib/assets/asset/indemand3.png',
                              fit: BoxFit.fill,
                            )),
                          ),
                          3.w.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              1.h.heightBox,
                              Text(
                                state.cart.products[index].product.name,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.sp),
                              ),
                              1.h.heightBox,
                              Text(
                                '\$ '+ state.cart.products[index].product.price.toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.sp),
                              ),
                              2.h.heightBox,
                              Row(
                                children: [
                                  Text(""),
                                  30.w.widthBox,
                                  Container(
                                    height: 3.h,
                                    width: 19.w,
                                    decoration: BoxDecoration(
                                      color: appthemColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 17,
                                        ),
                                        Text(
                                          '1',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13),
                                        ),
                                        Icon(Icons.remove,
                                            color: Colors.white, size: 17),
                                      ],
                                    ).p2(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ).p8(),
                    ),
                  );
                },
              ),
            )),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Totals',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 19),
              ),
            ).p16(),
            2.h.heightBox,
            Row(
              children: [
                Text(
                  'Sub Total',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp),
                ),
                Text(
                  '   .......................................       ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
                Text(
                  '₹699.00',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp),
                ),
              ],
            ).pSymmetric(h: 4.w),
            3.h.heightBox,
            Row(
              children: [
                Text(
                  'Sub Total',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp),
                ),
                Text(
                  '   .......................................       ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 11.sp),
                ),
                Text(
                  '₹0',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp),
                ),
              ],
            ).pSymmetric(h: 4.w),
            5.h.heightBox,
            Container(
              height: 6.h,
              width: 92.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 5.h,
                    width: 49.w,
                    child: Center(
                      child: TextField(
                        textAlign: TextAlign.start,
                        //controller: someTextXontroller,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Enter Voucher Code',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          contentPadding: EdgeInsets.all(10),
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "APPLY",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ).px16(),
            ),
            8.h.heightBox,
            Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: Container(
                height: 52,
                width: 180,
                decoration: BoxDecoration(
                  color: appthemColor,
                  borderRadius: BorderRadius.circular(15.sp),
                ),
                child: 'CHECKOUT'
                    .text
                    .size(10.sp)
                    .letterSpacing(1.5)
                    .bold
                    .white
                    .make()
                    .centered(),
              ).onTap(() {
                //_signupController.CheckSignup();
                Get.to(() => CheckoutAddress());
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
              }),
            ),
            1.h.heightBox,
          ],
        ),
      ),
    );
  }
}

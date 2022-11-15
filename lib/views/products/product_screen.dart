import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sugandh/api_provider/providers/products/remove_wishlist_provider.dart';
import 'package:sugandh/common_controller/productaController/product_view_controller.dart';
import 'package:sugandh/model/product_view_model.dart';
import 'package:sugandh/views/products/product2_screen.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../../common_controller/productaController/add_wishlist_controller.dart';
import '../../model/products_details_model.dart';
import 'package:flutter/src/widgets/image.dart' as image;

class ProductPage extends GetView<ProductDetailsModel>
    with WidgetsBindingObserver {
  ProductViewController productViewController =
      Get.put(ProductViewController());
  RxBool isliked = false.obs;
//  ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFE3E6EF),
          title: Text(
            'Product',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          actions: [
            Obx(
              () => IconButton(
                onPressed: () {
                  if (isliked.value == false) {
                    AddWishlistController()
                        .callAddWishlistApi(productViewController.id);

                    print(isliked.value);
                    isliked.value = true;
                  } else {
                    AddWishlistController()
                        .callRemoveWishlistApi(productViewController.id);
                    print(isliked.value);
                    isliked.value = false;
                    // isliked = false.obs;
                  }
                },
                icon: isliked.value
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    : Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
              ),
            ),
          ],
        ),
        body: productViewController.obx(
          (state) => Column(
            children: [
              Container(
                height: 50.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: Color(0xFFE3E6EF),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.sp),
                        bottomRight: Radius.circular(20.sp))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 5.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Container(
                                height: 3.h,
                                width: 3.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFF9848F),
                                ),
                              ).p2(),
                            ),
                            Container(
                              height: 5.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Container(
                                height: 3.h,
                                width: 3.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                              ).p2(),
                            ),
                            Container(
                              height: 5.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Container(
                                height: 3.h,
                                width: 3.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF7B91FF),
                                ),
                              ).p2(),
                            ),
                          ],
                        ),
                        image.Image.asset(
                          'lib/assets/asset/sunglasses.png',
                          height: 20.h,
                          width: 73.7.w,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 6.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Container(
                                height: 3.h,
                                width: 3.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFCFCFCF),
                                ),
                                child: Center(
                                  child: Text(
                                    'L',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ).p2(),
                            ),
                            Container(
                              height: 6.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: appthemColor,
                              ),
                              child: Container(
                                height: 3.h,
                                width: 3.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: appthemColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'M',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ).p2(),
                            ),
                            Container(
                              height: 6.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Container(
                                height: 3.h,
                                width: 3.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFCFCFCF),
                                ),
                                child: Center(
                                  child: Text(
                                    'S',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ).p2(),
                            ),
                          ],
                        ),
                      ],
                    ).pSymmetric(h: 4.w),
                    8.h.heightBox,
                    Text(
                      state!.product.name,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ).pSymmetric(h: 4.w),
                    2.h.heightBox,
                    Text(
                      '₹ ' + state.product.price.toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ).pSymmetric(h: 4.w),
                  ],
                ),
              ),
              18.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Container(
                      height: 45,
                      width: 160,
                      decoration: BoxDecoration(
                        color: appthemColor,
                        borderRadius: BorderRadius.circular(4.sp),
                      ),
                      child: 'View Details'
                          .text
                          .size(12.sp)
                          .letterSpacing(1.5)
                          .bold
                          .white
                          .make()
                          .centered(),
                    ).onTap(() {
                      // _signupController.CheckSignup();
                      Get.to(
                        () => Produt2page(),
                      );
                    }),
                  ),
                  Container(
                    height: 52,
                    width: 100,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 52,
                          width: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        Container(
                          height: 51,
                          width: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: appthemColor,
                          ),
                          child: Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ).pSymmetric(h: 4.w),
              3.h.heightBox,
            ],
          ),
        ));
  }
}

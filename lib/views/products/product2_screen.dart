import 'package:sizer/sizer.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sugandh/common_controller/productaController/add_wishlist_controller.dart';
import 'package:sugandh/common_controller/productaController/product_view_controller.dart';
import 'package:sugandh/rating/all_rating_page.dart';
import 'package:sugandh/views/RateProduct/rate_product.dart';
import 'package:sugandh/views/cart_screen/cart_page.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../common_controller/productaController/add_cart_controller.dart';

class Produt2page extends GetView<ProductViewController> {
  ProductViewController productViewController = Get.find();

  Produt2page({Key? key}) : super(key: key);

  List<String> indemand = [
    "lib/assets/asset/indemand1.png",
    "lib/assets/asset/indemand2.png",
    "lib/assets/asset/indemand3.png",
    "lib/assets/asset/indemand4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: productViewController.obx(
          (productdetails) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "lib/assets/asset/bg.png",
                    fit: BoxFit.fill,
                  ),
                  Container(
                    width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.sp),
                            bottomRight: Radius.circular(20.sp))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.black,
                                )),
                            IconButton(
                              onPressed: () {
                                AddWishlistController().callAddWishlistApi(
                                    productViewController.id);
                              },
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ).pSymmetric(h: 5.w),
                      ],
                    ),
                  ),
                ],
              ),
              2.h.heightBox,
              Row(
                children: [
                  1.w.widthBox,
                  Image.asset("lib/assets/asset/starfill.png"),
                  3.w.widthBox,
                  productViewController.obx(
                      (catstate) => Text(catstate!.product.ratings.toString())),
                  3.w.widthBox,
                  Text("Reviews").text.color(appthemColor).make(),
                ],
              ).pSymmetric(h: 5.w),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  controller.obx((catstate) => Text(
                        catstate!.product.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp,
                          color: Colors.black,
                        ),
                      )),
                ],
              ).pSymmetric(h: 5.w),
              2.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Description',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black),
                ).pSymmetric(h: 5.w),
              ),
              1.h.heightBox,
              Align(
                  alignment: Alignment.centerLeft,
                  child: productViewController.obx(
                    (catstate) => Text(
                      catstate!.product.category.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                          color: Colors.black),
                    ).pSymmetric(h: 5.w),
                  )),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  productViewController.obx((catstate) => Text(
                        '₹' + catstate!.product.price.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 19,
                          color: appthemColor,
                        ),
                      )),
                  3.w.widthBox,
                  Text("(include GST 10%)").text.gray700.make(),
                ],
              ).pSymmetric(h: 5.w),
              3.h.heightBox,
              Text("Select size").pSymmetric(h: 5.w),
              2.5.h.heightBox,
              Row(
                children: [
                  Container(
                    height: 3.h,
                    width: 6.w,
                    decoration: BoxDecoration(
                        color: appthemColor,
                        borderRadius: BorderRadius.circular(5.sp)),
                    child: Center(child: Text("L").text.white.make()),
                  ),
                  4.w.widthBox,
                  Container(
                    height: 3.h,
                    width: 6.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.sp)),
                    child: Center(child: Text("M").text.gray800.make()),
                  ),
                  4.w.widthBox,
                  Container(
                    height: 3.h,
                    width: 6.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.sp)),
                    child: Center(child: Text("S").text.gray800.make()),
                  )
                ],
              ).pSymmetric(h: 5.w),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 4.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: appthemColor),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ],
                    ).pSymmetric(h: 1.w),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Container(
                      height: 45,
                      width: 160,
                      decoration: BoxDecoration(
                        border: Border.all(color: appthemColor),
                        //border: Border.all(color: Colors.indigo),
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      child: 'ADD TO CART'
                          .text
                          .size(11.sp)
                          .letterSpacing(1.5)
                          .bold
                          .color(appthemColor)
                          .make()
                          .centered(),
                    ).onTap(() {
                      AddProductController()
                          .AddProductCartApi(productViewController.id);
                      // Get.to(CartPage());
                      // _signupController.CheckSignup();
                      //Get.to(()=> Produt2page());
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                    }),
                  ),
                ],
              ).pSymmetric(h: 4.w),
              1.5.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You May Also Like',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ).pSymmetric(h: 5.w),
              ),
              1.h.heightBox,
              Container(
                height: 25.5.h,
                child: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext, index) {
                    return Container(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Color(0xffE3E6EF),
                            )),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 15.h,
                                      width: 42.w,
                                      child: Image.asset(
                                        indemand[index],
                                        //
                                        height: 10.h,
                                        width: 40.w,
                                      ),
                                    ),
                                    Positioned(
                                      left: 10.sp,
                                      top: 10.sp,
                                      child: Container(
                                          height: 2.5.h,
                                          width: 15.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3.sp),
                                            color: Colors.white,
                                          ),
                                          child: Row(
                                            children: [
                                              1.w.widthBox,
                                              Image.asset(
                                                  "lib/assets/asset/starfill.png"),
                                              1.w.widthBox,
                                              Text("4.2+"),
                                            ],
                                          )),
                                    ),
                                    Positioned(
                                      left: 100.sp,
                                      top: 10.sp,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "lib/assets/asset/heart.png",
                                            height: 1.5.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                1.h.heightBox,
                                Text(
                                  "Men black raglan",
                                  style: TextStyle(
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ).px(3),
                                1.h.heightBox,
                                Text(
                                  "shirt",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                  ),
                                ).px(3),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "\$ 565",
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                      ),
                                    ).px(3),
                                    22.w.widthBox,
                                    Image.asset(
                                      "lib/assets/asset/basket.png",
                                      color: appthemColor,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ).pSymmetric(h: 1.w).onTap(() {
                        // Get.to(() => DiscoverPage());
                      }),
                    );
                  },
                  itemCount: indemand.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(7),
                  scrollDirection: Axis.horizontal,
                ),
              ),
              2.h.heightBox,
              InkWell(
                onTap: () {
                  Get.to(() => RateProduct());
                },
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reviews',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Column(
                          children: [
                            Text(
                              "ADD YOUR COMMENT",
                              style: TextStyle(
                                  color: appthemColor, fontSize: 13.sp),
                            )
                          ],
                        )
                      ],
                    ).paddingSymmetric(horizontal: 5.w),
                  ],
                ),
              ),
              0.5.heightBox,
              Container(
                height: 30.h,
                width: 100.w,
                color: Colors.white,
                child: AllRatingPage(),
                // ListView.builder(
                //   // physics: NeverScrollableScrollPhysics(),

                //   itemBuilder: (BuildContext, index) {
                //     return Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Column(
                //           children: [
                //             1.h.heightBox,

                //             Container(
                //               height: 14.h,
                //               width: 100.w,
                //               child: Row(
                //                 mainAxisAlignment:
                //                     MainAxisAlignment.spaceBetween,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   CircleAvatar(
                //                     backgroundColor: Colors.green,
                //                     radius: 22,
                //                     child: CircleAvatar(
                //                       backgroundColor: Colors.greenAccent[100],
                //                       radius: 21,
                //                       child: CircleAvatar(
                //                         backgroundImage: AssetImage(
                //                             'lib/assets/asset/avatar.png'), //NetworkImage
                //                         radius: 19,
                //                       ), //CircleAvatar
                //                     ), //CircleAvatar
                //                   ),
                //                   Column(
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     mainAxisAlignment:
                //                         MainAxisAlignment.spaceBetween,
                //                     children: [
                //                       Text(
                //                         'Ander',
                //                         style: TextStyle(
                //                             fontSize: 13,
                //                             color: Colors.black,
                //                             fontWeight: FontWeight.bold),
                //                       ),
                //                       Text(
                //                         'Wonderfull glasses,perfect gft my\n'
                //                         'girl for our anivercy',
                //                         style: TextStyle(
                //                           fontSize: 11,
                //                           color: Colors.black,
                //                         ),
                //                       ),
                //                       7.h.heightBox,
                //                     ],
                //                   ),
                //                   4.w.widthBox,
                //                   Column(
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     mainAxisAlignment:
                //                         MainAxisAlignment.spaceBetween,
                //                     children: [
                //                       VxRating(
                //                         onRatingUpdate: (value) {},
                //                         count: 5,
                //                         selectionColor: Colors.yellow,
                //                         size: 20,
                //                       ),
                //                     ],
                //                   ),
                //                 ],
                //               ).pSymmetric(h: 5.w),
                //             )

                //             //Image.asset('lib/assets/asset/sale1.png',fit: BoxFit.fill,)),
                //             //AssetImage(images[index]),
                //             //Text("This is title",style: TextStyle(fontSize: 10,),),
                //           ],
                //         ),
                //       ],
                //     );
                //   },
                //   itemCount: 5,
                //   shrinkWrap: true,
                //   //padding: EdgeInsets.all(5),
                //   //scrollDirection: Axis.horizontal,
                // ),
              ),
              2.h.heightBox,
            ],
          ),
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/common_controller/productaController/getall_products_controller.dart';

import 'package:sugandh/model/allproduct_model.dart' as m;

import 'package:sugandh/views/products/product2_screen.dart';
import 'package:sugandh/views/products/product_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../common_controller/productaController/product_view_controller.dart';

class All extends GetView<m.AllProductModel> {
  All({Key? key}) : super(key: key);

  AllProductsController allProductsController =
      Get.put(AllProductsController());

  // ProductViewController productViewController =
  //     Get.put(ProductViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: allProductsController.obx((catstate) => SizedBox(
              height: 90.h,
              child: GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //childAspectRatio: 4/ 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 205,
                  ),
                  itemCount: catstate!.products.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.sp),
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
                                      width: 39.w,
                                      child: Image.asset(
                                        "lib/assets/asset/bg.png",

                                        // catstate[index]
                                        //     .images[0]
                                        //     .url
                                        //     .toString(),

                                        fit: BoxFit.fill,
                                        errorBuilder: (context, _, __) =>
                                            Container(
                                          height: 100,
                                          color: Colors.grey.shade200,
                                          child: Image.asset(
                                              "lib/assets/asset/indemand1.png"),
                                        ),
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
                                              Text(catstate
                                                  .products[index].ratings
                                                  .toString()),
                                            ],
                                          )),
                                    ),
                                    Positioned(
                                      left: 100.sp,
                                      top: 10.sp,
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Image.asset(
                                              "lib/assets/asset/heart.png",
                                              height: 1.5.h,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                1.h.heightBox,
                                Text(
                                  catstate.products[index].name,
                                  style: TextStyle(
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ).px(3),
                                1.h.heightBox,
                                Text(
                                  catstate.products[index].description,
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                  ),
                                ).px(3),
                                1.h.heightBox,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '₹' +
                                          catstate.products[index].price
                                              .toString(),
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                      ),
                                    ).px(3),
                                    22.w.widthBox,
                                    Image.asset("lib/assets/asset/basket.png")
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ).pSymmetric(h: 1.w).onTap(() {
                        Get.to(() => ProductPage(),
                            arguments: catstate.products[index].id);
                      }),
                    ).pSymmetric(h: 2.w);
                  }),
            )));
  }
}

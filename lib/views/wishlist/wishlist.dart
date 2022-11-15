import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/common_controller/productaController/product_view_controller.dart';
import 'package:sugandh/views/products/product2_screen.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../common_controller/productaController/get_wish_list_controller.dart';
import '../../model/my_wishlist_model.dart' as g;
import '../products/product_screen.dart';

class Wishlist extends GetView<g.MyWishlistModel> with WidgetsBindingObserver {
  Wishlist({Key? key}) : super(key: key);
  MyWishlistController myWishlistcontroller = Get.put(MyWishlistController());
  // ProductViewController productcontroller = Get.put(ProductViewController());
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
          'WishList',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 19),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          1.5.h.heightBox,
          SizedBox(
            height: 100.h,
            child: myWishlistcontroller.obx(
              (catstate) => GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    //childAspectRatio: 4/ 3,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 215,
                  ),
                  itemCount: catstate!.wishlist.products.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                        height: 19.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 19.h,
                                width: 45.w,
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        // catstate.wishlist
                                        catstate.wishlist.products[index].name
                                            .toString(),

                                        style: TextStyle(
                                            fontSize: 13.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ).px(3),
                                    ),
                                    1.h.heightBox,
                                    Container(
                                      width: 40.w,
                                      height: 13.h,
                                      child: Image.asset(
                                          "lib/assets/asset/sunglasses.png"),
                                    ),
                                  ],
                                )),
                            Container(
                              height: 8.h,
                              color: Color(0xFFE3E6EF),
                              width: 45.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                          "₹" +
                                              catstate.wishlist.products[index]
                                                  .price
                                                  .toString(),
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      2.h.heightBox,
                                      Container(
                                        height: 2.5.h,
                                        width: 17.w,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: appthemColor),
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        child: Center(
                                            child: Text(
                                          'Buy Now',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.black),
                                        ).px(3)),
                                      ).onTap(() {
                                        Get.to(() => ProductPage(),
                                            arguments: catstate
                                                .wishlist.products[index].id);
                                        // productcontroller.id = catstate
                                        //     .wishlist.products[index].id;
                                        // productcontroller.productViewApi();
                                      }),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.shopping_bag,
                                        color: appthemColor,
                                        size: 20.0,
                                      ),
                                      2.h.heightBox,
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                ],
                              ).pSymmetric(h: 3.w),
                            ),
                          ],
                        )).pSymmetric(h: 2.w);
                  }),
            ),
          )
        ]),
      ),
    );
  }
}

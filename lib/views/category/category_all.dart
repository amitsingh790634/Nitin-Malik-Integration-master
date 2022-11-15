import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/common_controller/productaController/get_all_catagory_controller.dart';
import 'package:sugandh/filter/filter.dart';
import 'package:sugandh/model/get_all_category_mode.dart';

import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../common_controller/productaController/filter_controller.dart';

class CategoryAll extends GetView<GetAllCategory> {
  CategoryAll({Key? key}) : super(key: key);
  GetAllCatagoryController getAllCatagoryController =
      Get.put(GetAllCatagoryController());

  // ViewCategoryController viewCategoryController =
  //     Get.put(ViewCategoryController());

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
          'Category',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 19),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          1.h.heightBox,
          Container(
            height: 5.4.h,
            width: 90.w,
            decoration: BoxDecoration(
              color: Color(0xffE3E6EF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.grey,
                ),
                hintText: 'Search products',
                hintStyle: TextStyle(fontSize: 12.sp, color: Colors.grey),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 2.w),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ).p12(),
          Expanded(
              child: getAllCatagoryController.obx((state) =>
                  GridView.builder(
                      scrollDirection: Axis.vertical,
                      // physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        //childAspectRatio: 4/ 3,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 5,
                        mainAxisExtent: 105,
                      ),
                      itemCount: state!.categories.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: (20.sp),
                                  backgroundColor: Color(0xffE3E6EF),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      "lib/assets/asset/bg.png",
                                      height: 5.h,
                                      width: 100.w,
                                    ),
                                  ),
                                ),
                                1.h.heightBox,
                                Text(
                                  state.categories[index].parentCategory
                                      .toString(),
                                  style: TextStyle(color: appthemColor),
                                )
                              ],
                            ).onTap(() {
                              Get.to(
                                () => ViewCategory(),
                                arguments: state.categories[index].id,
                              );

                              // viewCategoryController.catid =
                              //     catstate.categories[index].id;

                              // viewCategoryController.callViewCategoryApi();
                            }),
                          ],
                        ).p8();
                      }))),
        ],
      ),
    );
  }
}

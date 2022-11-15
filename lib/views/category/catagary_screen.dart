import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sugandh/views/search_screen/search_page.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import 'package:flutter/cupertino.dart';

class CategaryPage extends StatelessWidget {
  CategaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Categary',
          style: TextStyle(
            color: appthemColor,
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ).onTap(() {
          Get.back();
        }),
        actions: [
          Icon(
            Icons.search,
            color: Colors.grey,
          ).onTap(() {
            Get.to(() => SearchScreen());
          }),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 85.h,
            width: 100.w,
            color: Colors.white,
            child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),

              itemBuilder: (BuildContext, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        1.h.heightBox,

                        Container(
                          height: 16.h,
                          width: 100.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 16.h,
                                width: 32.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Image.asset(
                                  'lib/assets/asset/kid.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Collection',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  1.h.heightBox,
                                  Text(
                                    '150 Items',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  3.h.heightBox,
                                ],
                              ),
                              4.w.widthBox,
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 22,
                                color: Colors.black,
                              )
                            ],
                          ).pSymmetric(h: 5.w),
                        )

                        //Image.asset('lib/assets/asset/sale1.png',fit: BoxFit.fill,)),
                        //AssetImage(images[index]),
                        //Text("This is title",style: TextStyle(fontSize: 10,),),
                      ],
                    ),
                  ],
                );
              },
              itemCount: 6,
              shrinkWrap: true,
              //padding: EdgeInsets.all(5),
              //scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

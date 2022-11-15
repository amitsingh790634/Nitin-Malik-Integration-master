import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sugandh/views/accounts/account_page.dart';
import 'package:sugandh/views/category/category_all.dart';

import 'package:sugandh/views/discover/discover_screens.dart';
import 'package:sugandh/views/search_screen/search_page.dart';
import 'package:sugandh/widgets/app_bar_widget.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:sugandh/widgets/drower_box.dart';

import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../common_controller/productaController/demand_product_controller.dart';
import '../../common_controller/productaController/search_controller.dart';
import '../../common_controller/productaController/trand_category_controller.dart';
import '../../model/searchmodel.dart';

class HomePage extends GetView<SearchModel> with WidgetsBindingObserver {
  SearchController searchcontroller = Get.put(SearchController());

  DemandProductController demandProductController =
      Get.put(DemandProductController());
  TrandCategoryController trandCategoryController =
      Get.put(TrandCategoryController());

  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "lib/assets/asset/jeans.png",
      "lib/assets/asset/paint.png",
      "lib/assets/asset/googles.png",
      "lib/assets/asset/blue frock.png",
      "lib/assets/asset/gloubs.png",
      "lib/assets/asset/phone.png",
      "lib/assets/asset/shooes.png",
      "lib/assets/asset/watches.png",
      "lib/assets/asset/earphone.png",
      "lib/assets/asset/paint.png",
    ];

    List<String> baner1 = [
      "lib/assets/asset/slide-1.png",
      "lib/assets/asset/slide2.png",
      "lib/assets/asset/slide3.png",
    ];

    List<String> baner2 = [
      "lib/assets/asset/shoeshop.png",
      "lib/assets/asset/menshop.png",
      "lib/assets/asset/womenshop.png",
      "lib/assets/asset/kidshop.png",
      "lib/assets/asset/mobileshop.png",
    ];
    List<String> indemand = [
      "lib/assets/asset/indemand1.png",
      "lib/assets/asset/indemand2.png",
      "lib/assets/asset/indemand3.png",
      "lib/assets/asset/indemand4.png",
    ];

    List<String> baner3 = [
      "lib/assets/asset/trading_girl.png",
      "lib/assets/asset/trading_legshoes.png",
      "lib/assets/asset/trading_shirts.png",
      "lib/assets/asset/trading_watches.png",
    ];

    List<String> baner4 = [
      "lib/assets/asset/iwatch.png",
      "lib/assets/asset/ipodeear.png",
      "lib/assets/asset/shirt.png",
      "lib/assets/asset/shoes.png",
    ];

    List<String> baner5 = [
      "lib/assets/asset/lakme.png",
      "lib/assets/asset/lakme3.png",
      "lib/assets/asset/face-cream-oil.png",
      "lib/assets/asset/lakme2.png",
    ];

    List<String> baner6 = [
      "lib/assets/asset/pouch-amul-original-.png",
      "lib/assets/asset/amul-original-ih.png",
      "lib/assets/asset/300-dark-hazelnut-chocolate.png",
      "lib/assets/asset/cheese-spread-yummy.png",
    ];

    List<String> baner7 = [
      "lib/assets/asset/7-8-years-blueshrug.png",
      "lib/assets/asset/blackscuit.png",
      "lib/assets/asset/bluefrock2.png",
      "lib/assets/asset/girlstyle.png",
    ];

    List<String> baner8 = [
      "lib/assets/asset/yes-semi-stitched-amira-red-.png",
      "lib/assets/asset/yes-unstitched.png",
      "lib/assets/asset/fabwomen-unstitched-.png",
      "lib/assets/asset/buke-yellow-combo-tashvir.png",
    ];

    List<String> baner9 = [
      "lib/assets/asset/cream-original-t.png",
      "lib/assets/asset/sandel.png",
      "lib/assets/asset/jorden33.png",
      "lib/assets/asset/shoesking.png",
    ];

    List<String> baner10 = [
      "lib/assets/asset/apple-iphone-12.png",
      "lib/assets/asset/g60-phone.png",
    ];

    List<String> banner2text1 = [
      'Sale',
      'Men',
      'Women',
      'kids',
      'Mobiles',
    ];
    List<String> banner3text1 = ['Redfrock', 'Legshoes', 'Shirts', 'watches'];
    List<String> text = [
      'Women',
      'Glasses',
      'Exclusive',
      'Dresses',
      'Pants',
      'New',
      'Short',
      'Gloves',
      'Winter',
      '50% OFF',
    ];

    List<String> banner2text2 = [
      'Extra 30 % Off',
      'Extra 30 % Off',
      'Extra 30 % Off',
      'Extra 30 % Off',
      'Extra 30 % Off',
      'Extra 30 % Off',
    ];
    List<String> banner3text2 = ['50% OFF', '30% OFF', '20% OFF', '35% OFF'];

    List<String> banner4text1 = [
      'Smart Watch',
      'Bluetooth',
      'Casual Shirt',
      'Running Shoes'
    ];
    List<String> banner4text2 = [
      'Min.70% OFF',
      'Min.60% OFF',
      'Min.50% OFF',
      'Min.70% OFF'
    ];
    List<String> banner4text3 = [
      'IP68 Bluetooth 4.0 ios 8.0+\n Android 4.4+live',
      'Lidht Weighted  Noice\n Cancellation Earphione\n Bluetooth',
      'Man Slim Fit Checkered\n Cut Away Coller Casual Shirt',
      'Buy Oora  Grey Running Shoes\n'
          'for Men Online at a Discounted\n'
          'price'
    ];
    List<String> banner5text1 = [
      'lakme Rose Face',
      'DPMD mekup kit combo',
      'WOW SKIN SCIENCE',
      'Ricerca Makeup Beauty'
    ];
    List<String> banner5text2 = [
      'Power Compact',
      'SET OF 27 COMPLETE\n'
          'MAKUP PRODUCTS',
      'Vitamin C Face Cream',
      'Black Waterproof Kajal'
    ];

    List<String> banner5text3 = [
      '₹152 10% off',
      '₹1,058 10% off',
      '₹509 15% off',
      '₹239 29% off'
    ];

    List<String> banner6text1 = [
      'Amul Ghee 500 ml Pouch',
      'Amul Pasteurised Salted\n'
          'Butter(100g)',
      'Amul DARK + HAZELNUT\n'
          'CHOCOLATE',
      'Amul Plain Cheese\n'
          'Spread (200g)'
    ];
    List<String> banner6text2 = ['₹305', '₹46', '₹372', '₹80'];

    List<String> banner7text1 = ['From', 'From', 'From', 'From'];

    List<String> banner7text2 = ['₹305', '₹46', '₹372', '₹80'];

    List<String> banner8text1 = [
      'Cotton Graphic Print',
      'Satish Embraidered',
      'Printed Mysore Art',
      'Women Float Print'
    ];

    List<String> banner8text2 = [
      'Floral Print',
      'Embelished Cown',
      'Silk Sarees(pink)',
      'Crepe Straight Kurta'
    ];

    List<String> banner8text3 = [
      '₹999  84% 0ff',
      '₹299  85% 0ff',
      '₹254  84% 0ff',
      '₹254  84% 0ff'
    ];

    List<String> banner9text1 = [
      'Women Off White \n'
          'Fluts Serial',
      'Women Blue Flates Sandel',
      'Shoes For Women',
      'Women Tan Flats Sandel'
    ];

    List<String> banner9text2 = [
      '₹999  84% 0ff',
      '₹299  85% 0ff',
      '₹254  84% 0ff',
      '₹254  84% 0ff'
    ];

    List<String> banner10text1 = [
      'iPhone 12 mini',
      'moto g60 at ₹15,999',
    ];

    List<String> banner10text2 = [
      'Powerfully Packed',
      'Poco X3 From ₹16,999',
    ];

    List<String> banner10text3 = [
      'From ₹62,999  84% 0ff',
      'Explore Details',
    ];

    int pageIndex = 0;
    GlobalKey<ScaffoldState> _keyhome = GlobalKey();
    return Scaffold(
      key: _keyhome,
      appBar: App_bar(
          start: Image.asset(
            'lib/assets/asset/menu.png',
            height: 12,
          ).onTap(() {
            _keyhome.currentState!.openDrawer();
          }),
          // "Location".text.size(13.sp).semiBold.black.make(),

          middle: Text(
            'Home',
            style: TextStyle(
              fontSize: 19,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          end: CircleAvatar(
              radius: (20),
              backgroundColor: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.sp),
                child: Image.asset("lib/assets/asset/indemand1.png"),
              )).onTap(() {
            Get.to(AcoountPage());
          })),
      drawer: OpenDrawer(),
      body: SafeArea(
        child: Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(color: Colors.white
              //gradient: gradient2,
              ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                2.h.heightBox,
                Row(children: [
                  InkWell(
                    onTap: () {
                      Get.to(SearchScreen());
                    },
                    child: Container(
                        height: 5.4.h,
                        width: 75.w,
                        decoration: BoxDecoration(
                          color: Color(0xffE3E6EF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            5.w.widthBox,
                            Icon(
                              Icons.search_rounded,
                              color: Colors.grey,
                            ),
                            3.w.widthBox,
                            Text(
                              "Search products",
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.grey),
                            )
                          ],
                        )
                        //
                        // TextField(
                        //   decoration: InputDecoration(
                        //     prefixIcon: Icon(
                        //       Icons.search_rounded,
                        //       color: Colors.grey,
                        //     ),
                        //     hintText: 'Search products',
                        //     hintStyle:
                        //         TextStyle(fontSize: 12.sp, color: Colors.grey),
                        //     contentPadding: EdgeInsets.symmetric(
                        //         vertical: 1.5.h, horizontal: 2.w),
                        //     border: OutlineInputBorder(
                        //       borderSide: BorderSide.none,
                        //       borderRadius: BorderRadius.circular(20),
                        //     ),
                        //   ),
                        // ),
                        ),
                  ),
                  5.w.widthBox,
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.grey,
                        size: 30.sp,
                      )),
                ]).p12(),
                Container(
                  height: 22.h,
                  width: 100.w,
                  color: Colors.white,
                  child: ListView.builder(
                    //physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (BuildContext, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 22.h,
                                  width: 100.w,
                                  child: Image.asset(
                                    baner1[index],
                                    fit: BoxFit.fill,
                                  )),
                            ],
                          ),
                        ],
                      );
                    },
                    itemCount: baner1.length,
                    shrinkWrap: true,
                    //padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Container(
                  height: 55,
                  width: 416,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shop by Category',
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(CategoryAll());
                        },
                        child: Text(
                          'VIEW ALL',
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: appthemColor,
                          ),
                        ),
                      ),
                    ],
                  ).pSymmetric(v: 0.5.h, h: 3.3.w),
                ),
                Container(
                    height: 14.h,
                    // width: 100.w,
                    child: trandCategoryController.obx(
                      (state) => ListView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: (34),
                                    backgroundColor: Color(0xffE3E6EF),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(
                                        baner2[index],
                                        height: 5.h,
                                        width: 100.w,
                                      ),
                                    ),
                                  ),
                                  1.h.heightBox,
                                  Text(
                                    state!.categories[index].parentCategory,
                                    style: TextStyle(color: appthemColor),
                                  )
                                ],
                              )
                            ],
                          ).pSymmetric(h: 1.w).onTap(() {
                            Get.to(() => DiscoverPage());
                          });
                        },
                        itemCount: state!.categories.length,
                        shrinkWrap: true,
                        padding: EdgeInsets.all(7),
                        scrollDirection: Axis.horizontal,
                      ),
                    )),
                Container(
                  height: 55,
                  width: 416,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'In Demand',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'VIEW ALL',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: appthemColor,
                        ),
                      ),
                    ],
                  ).pSymmetric(v: 0.5.h, h: 3.3.w),
                ),
                Container(
                  height: 26.h,
                  child: demandProductController.obx((state) =>
                      ListView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext, index) {
                          return Container(
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.sp),
                                      border: Border.all(
                                        color: Color(0xffE3E6EF),
                                      )),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                      BorderRadius.circular(
                                                          3.sp),
                                                  color: Colors.white,
                                                ),
                                                child: Row(
                                                  children: [
                                                    1.w.widthBox,
                                                    Image.asset(
                                                        "lib/assets/asset/starfill.png"),
                                                    1.w.widthBox,
                                                    Text(state!
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
                                        state.products[index].name,
                                        style: TextStyle(
                                          fontSize: 9.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ).px(3),
                                      1.h.heightBox,
                                      Text(
                                        state.products[index].category
                                            .parentCategory,
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                        ),
                                      ).px(3),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "\$ " +
                                                state.products[index].price
                                                    .toString(),
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                            ),
                                          ).px(3),
                                          22.w.widthBox,
                                          Image.asset(
                                              "lib/assets/asset/basket.png")
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ).pSymmetric(h: 1.w).onTap(() {
                              Get.to(() => DiscoverPage());
                            }),
                          );
                        },
                        itemCount: state!.products.length,
                        shrinkWrap: true,
                        padding: EdgeInsets.all(7),
                        scrollDirection: Axis.horizontal,
                      )),
                ),
                Container(
                  height: 55,
                  width: 416,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New Arrivals',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'VIEW ALL',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: appthemColor,
                        ),
                      ),
                    ],
                  ).pSymmetric(v: 0.5.h, h: 3.3.w),
                ),
                Container(
                  height: 26.h,
                  child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext, index) {
                      return Container(
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.sp),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "\$ 565",
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
                          Get.to(() => DiscoverPage());
                        }),
                      );
                    },
                    itemCount: indemand.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.all(7),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

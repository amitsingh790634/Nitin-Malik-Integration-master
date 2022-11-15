import 'dart:ui';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/views/about_us/about_us.dart';
import 'package:sugandh/views/about_us/faq.dart';
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';
import 'package:sugandh/views/category/catagary_screen.dart';
import 'package:sugandh/views/category/category_all.dart';
import 'package:sugandh/views/check_out_screens/check_out_address.dart';
import 'package:sugandh/views/discover/discover_screens.dart';
import 'package:sugandh/views/home_screen/home_page.dart';
import 'package:sugandh/views/login/login_screens.dart';
import 'package:sugandh/views/member/member_page.dart';
import 'package:sugandh/views/onboarding/onboarding.dart';
import 'package:sugandh/views/order_acepted/order_accepted.dart';
import 'package:sugandh/views/wishlist/wishlist.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:sugandh/widgets/welcomeButton_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OpenDrawer extends StatefulWidget {
  const OpenDrawer({Key? key}) : super(key: key);

  @override
  _OpenDrawerState createState() => _OpenDrawerState();
}

class _OpenDrawerState extends State<OpenDrawer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
      child: Drawer(
        backgroundColor: appthemColor,
        child: SafeArea(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.23,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      2.h.heightBox,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          radius: 41,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                                'lib/assets/asset/avatar.png'), //NetworkImage
                            radius: 39,
                          ), //CircleAvatar
                        ),
                      ).px32(),
                      1.h.heightBox,

                      //Image.asset('lib/assets/asset/avatar.png'),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Jameson Donn',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                      ).px32(),
                      1.h.heightBox,

                      //Image.asset('lib/assets/asset/avatar.png'),

                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '@johndonee',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                          ),
                        ),
                      ).px32(),
                    ],
                  ),
                ),
                2.h.heightBox,
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: ListView(
                      padding: EdgeInsets.all(0.0),
                      children: [
                        Container(
                          child: ListTile(
                            leading: Image.asset(
                              'lib/assets/asset/home.png',
                              height: 17,
                              width: 55,
                            ),
                            //Icon(FontAwesomeIcons.calendarCheck,color: Colors.black,),
                            title: Text(
                              'Home',
                              style: TextStyle(color: Colors.black),
                            ),
                            //PersonalDetails
                          ),
                        ).onTap(() {
                          // Get.to(() => MyDashBoard());
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyDashBoard()));
                        }),

                        Container(
                          child: ListTile(
                            leading: Image.asset(
                              'lib/assets/asset/Icon_Catalog.png',
                              height: 17,
                              width: 55,
                            ),
                            //Icon(Icons.supervised_user_circle,color: Colors.black,),
                            title: Text(
                              'Catalog',
                              style: TextStyle(color: Colors.black),
                            ),
                            //PersonalDetails
                          ),
                        ).onTap(() {
                          Get.to(() => DiscoverPage());

                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
                        }),

                        Container(
                          child: ListTile(
                            leading: Image.asset(
                              'lib/assets/asset/category.png',
                              height: 17,
                              width: 55,
                            ),
                            //Icon(Icons.supervised_user_circle,color: Colors.black,),
                            title: Text(
                              'Categary',
                              style: TextStyle(color: Colors.black),
                            ),
                            //PersonalDetails
                          ),
                        ).onTap(() {
                          Get.to(() => CategoryAll());

                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleFit()));
                        }),

                        Container(
                          child: ListTile(
                            leading: Image.asset(
                              'lib/assets/asset/diamond.png',
                              height: 17,
                              width: 55,
                            ),
                            //Icon(Icons.supervised_user_circle,color: Colors.black,),
                            title: Text(
                              'Unlock membership',
                              style: TextStyle(color: Colors.black),
                            ),
                            //PersonalDetails
                          ),
                        ).onTap(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MemberPage()));
                        }),
                        Container(
                          child: ListTile(
                            leading: Image.asset(
                              'lib/assets/asset/faq.png',
                              height: 17,
                              width: 55,
                            ),
                            //Icon(Icons.supervised_user_circle,color: Colors.black,),
                            title: Text(
                              'Faq\'s',
                              style: TextStyle(color: Colors.black),
                            ),
                            //PersonalDetails
                          ),
                        ).onTap(() {
                          Get.to(() => Faq());

                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>UserComments()));
                        }),
                        Container(
                          child: ListTile(
                            leading: Image.asset(
                              'lib/assets/asset/heart.png',
                              height: 17,
                              width: 55,
                            ),
                            //Icon(Icons.supervised_user_circle,color: Colors.black,),
                            title: Text(
                              'Wishlist',
                              style: TextStyle(color: Colors.black),
                            ),
                            //PersonalDetails
                          ),
                        ).onTap(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Wishlist()));
                        }), //ShrareDetails

                        Container(
                          child: ListTile(
                            leading: Icon(
                              Icons.account_box_outlined,
                              size: 20,
                            ),
                            //Icon(Icons.supervised_user_circle,color: Colors.black,),
                            title: Text(
                              'Aboutus',
                              style: TextStyle(color: Colors.black),
                            ),
                            //PersonalDetails
                          ),
                        ).px16().onTap(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutUs()));
                        }),

                        Container(
                          child: ListTile(
                            leading: Icon(
                              Icons.logout,
                              size: 20,
                            ),
                            //Icon(Icons.supervised_user_circle,color: Colors.black,),
                            title: Text(
                              'Logout',
                              style: TextStyle(color: Colors.black),
                            ),
                            //PersonalDetails
                          ),
                        ).px16().onTap(() {
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAppointment()));

                          _logoutBottomSheet(context);
                        }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _logoutBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "LOGOUT",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                            child: Image.asset("lib/assets/asset/cancel.png")))
                  ],
                ),
                3.h.heightBox,
                Text(
                  "Are you sure you want to\nlogout?",
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold),
                ),
                3.h.heightBox,
                InkWell(
                  onTap: () {
                    // Get.to(LoginScreen());
                    logOutUser();
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.80,
                    decoration: BoxDecoration(
                        color: appthemColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "YES",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  logOutUser() async {
    GetStorage box = GetStorage();
    var token = await box.read("token");
    token.remove();
    Get.offAll(LoginScreen());
  }
}

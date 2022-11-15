import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';

import 'package:sugandh/views/login/login_screens.dart';
import 'package:sugandh/views/onboarding/intro.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currtpage = 0;
  PageController? _controller;

  autuLogin() async {
    GetStorage box = GetStorage();
    var token = await box.read("token");
    //  var status = box.getBool("isLoggedIn") ?? false;
    print(token);
    if (token != null) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => MyDashBoard()),
      Get.offAll(MyDashBoard());
    } else {
      Get.to(LoginScreen());
    }
  }

  @override
  void initState() {
    autuLogin();
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currtpage = index;
                });
              },
              itemBuilder: (_, i) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(contents[i].image!),
                        Text(
                          contents[i].title!,
                          style: const TextStyle(
                              color: Color(0xff010F07),
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          contents[i].discription!,
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Color(0xff868686), fontSize: 16),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    contents.length, (index) => buildDot(index, context))),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
              height: 30.h,
              width: 100.w,
              decoration: BoxDecoration(
                  color: appthemColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.sp),
                      topRight: Radius.circular(10.sp))),
              child: Column(
                children: [
                  2.h.heightBox,
                  Text("-Or connect with-").text.white.size(12.sp).bold.make(),
                  2.h.heightBox,
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Container(
                      height: 6.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.sp),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'lib/assets/asset/Icon_Facebook.png',
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Sign in With Facebook',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: buttonColor,
                              ),
                            ),
                          ).pOnly(right: 24.w),
                        ],
                      ).pSymmetric(h: 9.w),
                    ).onTap(() {
                      //_loginController.CheckLogin();
                      //Get.to(()=> LoginScreen());
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                    }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Container(
                      height: 6.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.sp),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'lib/assets/asset/icons8_Google_2.png',
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Sign in With Google',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: buttonColor,
                              ),
                            ),
                          ).pOnly(right: 24.w),
                        ],
                      ).pSymmetric(h: 9.w),
                    ).onTap(() {
                      //_loginController.CheckLogin();
                      //Get.to(()=> LoginScreen());
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                    }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          // Get.to(CreateAccount());
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Already have a account ?',
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      6.h.heightBox,
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ).px8().onTap(() {
                        // Get.to(() => LoginScreen());
                        autuLogin();
                      }),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currtpage == index ? 10 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currtpage == index ? appthemColor : Color(0xff979797),
      ),
    );
  }
}

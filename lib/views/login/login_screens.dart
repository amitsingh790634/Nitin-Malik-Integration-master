import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sugandh/common_controller/userController/login_controller.dart';
import 'package:sugandh/views/Password/forget_password.dart';

import 'package:sugandh/views/login/create_account.dart';

import 'package:sugandh/widgets/constant.dart';
import 'package:sugandh/widgets/welcomeButton_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _loginController.loginkey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                3.h.heightBox,
                Center(
                  child: Container(
                    height: 10.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                        color: appthemColor,
                        borderRadius: BorderRadius.circular(30.sp)),
                    child: Center(child: Text("Logo").text.white.make()),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.height * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: buttonColor,
                        ),
                      ),
                    ).p2(),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Login in to get started and experience',
                        style: TextStyle(
                          fontSize: 12,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ).p2(),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Great shoping deals',
                        style: TextStyle(
                          fontSize: 12,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ).p1(),
                    2.h.heightBox,
                    TextFormField(
                      validator: _loginController.phonevalidate,
                      controller: _loginController.phone,
                      decoration: const InputDecoration(
                        hintText: 'Mobile No',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: appthemColor,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: appthemColor, width: 0.5),
                        ),
                      ),
                    ).pSymmetric(h: 4.w),
                    TextFormField(
                      obscureText: true,
                      validator: _loginController.passwordvalidation,
                      controller: _loginController.password,
                      decoration: const InputDecoration(
                        hintText: 'password',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: appthemColor,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: appthemColor, width: 0.5),
                        ),
                      ),
                    ).pSymmetric(h: 4.w),
                    10.h.heightBox,
                    WelcomeButtonWidget(
                      btnText: "SIGN IN",
                      ontap: () {
                        _loginController.checklogin();
                      },
                    ),
                    3.h.heightBox,
                    InkWell(
                      onTap: () {
                        Get.to(ForgetPassword());
                      },
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(color: appthemColor),
                      ),
                    ).px12(),
                    15.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don\'t have an account? ",
                          style:
                              TextStyle(fontSize: 13.sp, color: Colors.black),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(CreateAccount());
                          },
                          child: Text(
                            "Signup",
                            style:
                                TextStyle(fontSize: 13.sp, color: appthemColor),
                          ),
                        )
                      ],
                    )
                  ]),
                ),
                3.h.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

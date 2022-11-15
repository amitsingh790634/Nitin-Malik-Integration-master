import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'package:sizer/sizer.dart';
import 'package:sugandh/common_controller/userController/create_account_controller.dart';
import 'package:sugandh/common_controller/userController/forget_password_controller.dart';
import 'package:sugandh/common_controller/userController/otp_forget_controller.dart';

import 'package:sugandh/views/otp_screens/time_controller.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';

import 'otp_input.dart';

class OtpResend extends StatelessWidget {
  OtpResend({Key? key, this.phone}) : super(key: key);
  OtpForgetController _timeController = Get.put(OtpForgetController());

  ForgetPasswordController _forgetPasswordController = Get.find();

  final phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Verification",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _timeController.otpforgetKey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                9.h.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'A 5 Digit PIN has been sent to Your',
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ).p2(),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'phone no. Enter it below to continue',
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ).p1(),
                9.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Form(
                        child: Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          OtpInput(
                              validator: _timeController.otpValidator,
                              controller: _timeController.otp[i],
                              autoFocus: i == 0 ? true : false),
                      ],
                    ))
                  ],
                ),
                10.h.heightBox,
                Container(
                  height: 52,
                  width: 320,
                  decoration: BoxDecoration(
                    color: appthemColor,
                    borderRadius: BorderRadius.circular(20.sp),
                  ),
                  child: 'VERIFY'
                      .text
                      .size(10.sp)
                      .letterSpacing(1.5)
                      .bold
                      .white
                      .make()
                      .centered(),
                ).onInkTap(() {
                  _timeController.otpdigits();

                  _timeController.verifyOtpCall(
                      _forgetPasswordController.forgetphone.text,
                      _timeController.result);
                  // _timeController.
                  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(_timeController.result.toString())));
                  //
                }),
                Obx(() => Text(_timeController.elapsedTime.value)),
                Align(
                        alignment: Alignment.centerRight,
                        child: "Resend OTP".text.black.size(11.sp).end.make())
                    .pSymmetric(h: 8.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

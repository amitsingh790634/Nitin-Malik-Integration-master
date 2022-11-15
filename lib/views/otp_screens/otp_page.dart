import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/common_controller/userController/create_account_controller.dart';
import 'package:sugandh/common_controller/verify_controller.dart';

import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';

import 'otp_input.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({Key? key, this.phone}) : super(key: key);
  OtpTimerController _timeController = Get.put(OtpTimerController());

  final phone;

  CreateAccountController _createVerify = Get.find();

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
        key: _timeController.otpKey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                9.h.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'A 4 Digit PIN has been sent to Your',
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
                    Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          OtpInput(
                              validator: _timeController.otpValidator,
                              controller: _timeController.otp[i],
                              autoFocus: i == 0 ? true : false),
                      ],
                    )
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

                  _timeController.verifySignup(
                      _createVerify.phone.text, _timeController.result);
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

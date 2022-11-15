import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/common_controller/userController/forget_password_controller.dart';
import 'package:sugandh/views/otp_screens/otp_page.dart';
import 'package:sugandh/views/otp_screens/otp_resend.dart';
import 'package:sugandh/widgets/welcomeButton_widget.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);

  ForgetPasswordController _forgetPasswordController =
      Get.put(ForgetPasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Forget Password ",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 3.h,
            ),
            Center(
                child: Text(
              "Enter Your Mobile Number to get the \n verification code",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13.sp),
            )),
            SizedBox(
              height: 5.h,
            ),
            Form(
              key: _forgetPasswordController.fpasswordkey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _forgetPasswordController.forgetphone,
                    validator: _forgetPasswordController.phonevalidate,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Mobile No",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            WelcomeButtonWidget(
              btnText: "Next",
              ontap: () {
                _forgetPasswordController.checkforgetPassword();
              },
            )
          ],
        ),
      ),
    );
  }
}

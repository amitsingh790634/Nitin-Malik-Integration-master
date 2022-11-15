import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/views/Password/controller/create_new_password_controller.dart';
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';
import 'package:sugandh/widgets/welcomeButton_widget.dart';

class CreateNewPassword extends GetView<CreateNewPasswordController> {
  CreateNewPasswordController createNewPasswordController =
      Get.put(CreateNewPasswordController());

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
          onTap: () {},
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Form(
        key: createNewPasswordController.newpasskey,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              TextFormField(
                controller: createNewPasswordController.passnew,
                decoration: InputDecoration(
                  hintText: "New Password",
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              TextFormField(
                controller: createNewPasswordController.passconfirm,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              WelcomeButtonWidget(
                btnText: "CREATE PASSWORD",
                ontap: () {
                  createNewPasswordController.callResetApi();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

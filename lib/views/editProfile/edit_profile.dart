import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';
import 'package:sugandh/widgets/constant.dart';

import '../../common_controller/userController/edit_profile_controller.dart';
import '../../widgets/welcomeButton_widget.dart';

class EditProfile extends GetView<EditProfileController> {
  EditProfile({Key? key}) : super(key: key);
  final editController = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Edit Profile",
          style: TextStyle(color: appthemColor, fontWeight: FontWeight.bold),
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 45,
                  child: CircleAvatar(
                    backgroundColor: Colors.greenAccent[100],
                    radius: 45,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                          'lib/assets/asset/avatar.png'), //NetworkImage
                      radius: 45,
                    ), //CircleAvatar
                  ), //CircleAvatar
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Change Profile ",
                style: TextStyle(color: appthemColor, fontSize: 12.sp),
              ),
              Form(
                  key: editController.editProfileKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: editController.namecont,
                        validator: editController.namevalidate,
                        decoration: InputDecoration(
                          hintText: "Name",
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      TextFormField(
                        controller: editController.emailcont,
                        validator: editController.emailvalidate,
                        decoration: InputDecoration(
                          hintText: "Email",
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      TextFormField(
                        controller: editController.phonecont,
                        validator: editController.phonevalidation,
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10.h,
              ),
              WelcomeButtonWidget(
                ontap: () {
                  editController.callEditProfile();
                  Future.delayed(const Duration(seconds: 1), () {
                    editController.editProfileKey.currentState!.reset();
                    // editController.namecont.clear();
                    // editController.emailcont.clear();
                    // editController.phonecont.clear();
                  });
                },
                btnText: "UPDATE",
              )
            ],
          ),
        ),
      ),
    );
  }
}

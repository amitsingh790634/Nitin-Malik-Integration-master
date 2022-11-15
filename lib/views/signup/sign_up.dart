// import 'package:sizer/sizer.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sugandh/views/login/login_screens.dart';
// import 'package:sugandh/views/signup/signup_controller.dart';
// import 'package:sugandh/widgets/constant.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter/cupertino.dart';

// class SignUpScreen extends StatelessWidget {
//   SignUpScreen({Key? key}) : super(key: key);

//   SignupController _signupController = Get.put(SignupController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         autovalidateMode: AutovalidateMode.onUserInteraction,
//         key: _signupController.signupform,
//         child: SafeArea(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 2.h.heightBox,
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: IconButton(
//                       onPressed: () {
//                         Get.back();

//                       },
//                       icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.black,)
//                   ),
//                 ).p8(),

//                 4.h.heightBox,
//                 Align(
//                   alignment: Alignment.center,
//                   child: Text('SIGNUP',style: TextStyle(
//                     fontSize: 20,fontWeight: FontWeight.bold,color: buttonColor,
//                   ),),
//                 ).p8(),

//                 Align(
//                   alignment: Alignment.center,
//                   child: Text('SignUp in to get started and experience',style: TextStyle(
//                     fontSize: 12,fontWeight: FontWeight.bold,color:Colors.grey,
//                   ),),
//                 ).p2(),

//                 11.h.heightBox,

//                 TextFormField(
//                   validator: _signupController.validatename,
//                   controller: _signupController.name,
//                   decoration: InputDecoration(
//                     hintText: 'Name',
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black),

//                     ),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black, width: 0.5),

//                     ),
//                   ),
//                 ).pSymmetric(h: 4.w),
//                 0.5.h.heightBox,
//                 TextFormField(
//                   //obscureText: true,
//                   validator: _signupController.validateEmail,
//                   controller: _signupController.email,

//                   decoration: InputDecoration(
//                     hintText: 'Email',
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black),

//                     ),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black, width: 0.5),

//                     ),
//                   ),
//                 ).pSymmetric(h: 4.w),
//                 0.5.h.heightBox,

//                 TextFormField(
//                   //obscureText: true,
//                   validator: _signupController.validateAge,
//                   controller: _signupController.age,

//                   decoration: InputDecoration(
//                     hintText: 'Age',
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black),

//                     ),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black, width: 0.5),

//                     ),
//                   ),
//                 ).pSymmetric(h: 4.w),
//                 0.5.h.heightBox,

//                 TextFormField(
//                   //obscureText: true,
//                   validator: _signupController.validateMobile,
//                   controller: _signupController.mobile,

//                   decoration: InputDecoration(
//                     hintText: 'Mobile',
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black),

//                     ),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black, width: 0.5),

//                     ),
//                   ),
//                 ).pSymmetric(h: 4.w),
//                 0.5.h.heightBox,

//                 TextFormField(
//                   //obscureText: true,
//                   validator: _signupController.validategender,
//                   controller: _signupController.Gender,

//                   decoration: InputDecoration(
//                     hintText: 'Gender',
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black),

//                     ),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(color: Colors.black, width: 0.5),

//                     ),
//                   ),
//                 ).pSymmetric(h: 4.w),

//                 7.h.heightBox,

//                 Padding(
//                   padding:  EdgeInsets.only(bottom: 2.h),
//                   child: Container(
//                     height: 52,
//                     width: 360,
//                     decoration: BoxDecoration(
//                       color: buttonColor,
//                       border: Border.all(color: Colors.indigo),
//                       borderRadius: BorderRadius.circular(4.sp),
//                     ),
//                     child: 'SUBMIT'
//                         .text
//                         .size(10.sp)
//                         .letterSpacing(1.5)
//                         .bold
//                         .white
//                         .make()
//                         .centered(),
//                   ).onTap(() {

//                     _signupController.CheckSignup();
//                     Get.to(()=> LoginScreen());
//                     //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
//                   }),
//                 ),
//                 3.h.heightBox,

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Align(
//                       alignment: Alignment.center,
//                       child: Text('You have an account ?',style: TextStyle(
//                         fontSize: 11,fontWeight: FontWeight.w600,color: Colors.grey,
//                       ),),
//                     ),
//                     6.h.heightBox,

//                     Align(
//                       alignment: Alignment.center,
//                       child: Text('LOGIN',style: TextStyle(
//                         fontSize: 12,fontWeight: FontWeight.w500,color: buttonColor,
//                       ),),
//                     ).px8().onTap(() {
//                       Get.to(()=> SignUpScreen());
//                     }),

//                   ],
//                 ),

//                 5.h.heightBox,

//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

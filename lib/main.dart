import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/views/check_out_screens/check_out_address.dart';
import 'package:sugandh/views/login/login_screens.dart';
import 'package:sugandh/views/onboarding/onboarding.dart';
import 'package:sugandh/views/splash/welcome_page.dart';

import 'views/buttom_nav_bar/dash_bord.dart';

void main() async {
  await GetStorage.init();

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,

        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: WelcomeSplashScreen(),
        // home: (),
      );
    });
  }
}

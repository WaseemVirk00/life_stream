import 'package:flutter/material.dart';
import 'package:life_stream/pages/find_blood_dononrs.dart';
import 'package:life_stream/pages/home_page.dart';
import 'package:life_stream/pages/input_mobile_number.dart';
import 'package:life_stream/pages/main_page.dart';
import 'package:life_stream/pages/onbording.dart';
import 'package:life_stream/pages/otp_mobile_number.dart';
import 'package:life_stream/pages/sign_up.dart';
import 'package:life_stream/pages/splash_screen.dart';

import 'Utils/routers.dart';
import 'Utils/theme.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        initialRoute: MyRoutes.mainRoute,
        routes: {
          MyRoutes.splashRoute: (context) => SplashScreen(),
          MyRoutes.onBoardingRoute: (context) => OnBording(),
          MyRoutes.mainRoute: (context) => MainPage(),
          MyRoutes.inputMobileNumberRoute: (context) => InputMobileNumber(),
          MyRoutes.otpMobileNumberRoute: (context) => OtpMobileNumber(),
          MyRoutes.signUpRoute: (context) => Sign_Up(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.findBloodRoute: (context) => FindBloodPage(),
        });
  }
}

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:life_stream/pages/find_blood_dononrs.dart';
import 'package:life_stream/pages/help_page.dart';
import 'package:life_stream/pages/home_page.dart';
import 'package:life_stream/pages/input_mobile_number.dart';
import 'package:life_stream/pages/main_page.dart';
import 'package:life_stream/pages/notification_history_page.dart';
import 'package:life_stream/pages/onbording.dart';
import 'package:life_stream/pages/otp_mobile_number.dart';
import 'package:life_stream/pages/sign_up.dart';
import 'package:life_stream/pages/splash_screen.dart';
import 'Utils/routers.dart';
import 'Utils/theme.dart';
import 'components/stepper_demo.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // The Mandy red, light theme.
        theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
        // The Mandy red, dark theme.
        darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
        // Use dark or light theme based on system setting.
        themeMode: ThemeMode.system,
        initialRoute: MyRoutes.mainRoute,
        routes: {
          MyRoutes.stepperdemoRoute: (context) => const StepperDemo(),
          MyRoutes.splashRoute: (context) => const SplashScreen(),
          MyRoutes.onBoardingRoute: (context) => OnBording(),
          MyRoutes.mainRoute: (context) => const MainPage(),
          MyRoutes.inputMobileNumberRoute: (context) =>
              const InputMobileNumber(),
          MyRoutes.otpMobileNumberRoute: (context) => const OtpMobileNumber(),
          MyRoutes.signUpRoute: (context) => const Sign_Up(),
          MyRoutes.homeRoute: (context) => const HomePage(),
          MyRoutes.findBloodRoute: (context) => const FindBloodPage(),
          MyRoutes.notificationHistoryPage: (context) =>
              NotificationHistoryPage(),
          MyRoutes.helpPage: (context) => const HelpPage(),
        });
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  //Colors
  static Color primary = const Color(0xfffDE2C2C);
  static Color primary2 = const Color(0xfff);
  static Color primary3 = const Color(0xfff5f5f5);
  static Color primary4 = const Color(0xfff5f5f5);
  static Color kYellowLight = const Color(0xFFFFF7EC);
  static Color kYellow = const Color(0xFFFAF0DA);
  static Color kYellowDark = const Color(0xFFEBBB7F);
  static Color kRedLight = const Color(0xFFFCF0F0);
  static Color kRed = const Color(0xFFFBE4E6);
  static Color kRedDark = const Color(0xFFF08A8E);
  static Color kBlueLight = const Color(0xFFEDF4FE);
  static Color kBlue = const Color(0xFFE1EDFC);
  static Color kBlueDark = const Color(0xFFC0D3F8);

  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.red,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        textTheme: Theme.of(context).textTheme,
      ));

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}

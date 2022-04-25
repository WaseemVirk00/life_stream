import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  //Colors
  static Color primary = Color(0xfffDE2C2C);
  static Color primary2 = Color(0xfff);
  static Color primary3 = Color(0xfff5f5f5);
  static Color primary4 = Color(0xfff5f5f5);
  static Color kYellowLight = Color(0xFFFFF7EC);
  static Color kYellow = Color(0xFFFAF0DA);
  static Color kYellowDark = Color(0xFFEBBB7F);
  static Color kRedLight = Color(0xFFFCF0F0);
  static Color kRed = Color(0xFFFBE4E6);
  static Color kRedDark = Color(0xFFF08A8E);
  static Color kBlueLight = Color(0xFFEDF4FE);
  static Color kBlue = Color(0xFFE1EDFC);
  static Color kBlueDark = Color(0xFFC0D3F8);

  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.red,
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        textTheme: Theme.of(context).textTheme,
      ));

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}

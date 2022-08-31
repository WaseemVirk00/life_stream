import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomStyles {
  static final smallTextStyle = GoogleFonts.heebo(
    textStyle: const TextStyle(
      color: Colors.grey,
      fontSize: 12,
    ),
  );

  static final subtitleStyle = GoogleFonts.lato(
      textStyle: TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.grey[600],
  ));

  static TextStyle normalTextStyle() {
    return GoogleFonts.poppins(
        fontSize: 15,
        color: const Color(0xff3A4276).withOpacity(.4),
        fontWeight: FontWeight.w500);
  }

  static TextStyle headTextStyle() {
    return GoogleFonts.poppins(
      fontSize: 15,
      color: const Color(0xff3A4276),
      fontWeight: FontWeight.w800,
    );
  }

  static final smallLightTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
      color: Colors.black.withOpacity(0.8),
      fontSize: 10,
      fontFamily: 'Poppins',
    ),
  );

  static final mediumTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: Color(0xff303030),
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
  );
  static final headingStyle = GoogleFonts.poppins(
      textStyle: GoogleFonts.lato(
          textStyle: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black)));

  static final cardBoldTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  );

  static final cardBoldDarkTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  );

  static final cardBoldDarkDrawerTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  );

  static final cardBoldDarkTextStyle2 = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );

  static final cardBoldDarkTextStyleGreen = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: Colors.green,
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
  );

  static final cardNormalTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );

  static final cardNormalDarkTextStyle = GoogleFonts.poppins(
    textStyle: const TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
  );
}

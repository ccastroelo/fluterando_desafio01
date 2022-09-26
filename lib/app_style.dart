import 'dart:ui';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  late Color primaryColor;
  late Color highLightColor;
  late Color descriptionColor;
  late Color cardColor;
  late Color backGroundColor;
  late TextStyle headLine1Style;
  late TextStyle headLine2Style;
  late TextStyle bodyTextStyle;
  late TextStyle descriptionStyle;
  late TextStyle exerciseStyle;
  late TextStyle moreStyle;

  Color primaryColorDark = const Color(0xFF055aa3);
  Color highLightColorDark = const Color(0xFFEDF4F8);
  Color descriptionColorDark = const Color(0xFF51565A);
  Color cardColorDark = const Color(0xFF172026);
  Color backGroundColorDark = const Color(0xFF121517);

  Color primaryColorLite = const Color(0xFF055aa3);
  Color highLightColorLite = const Color(0xFF172026);
  Color descriptionColorLite = const Color(0xFF51565A);
  Color cardColorLite = const Color(0xFFEDF4F8);
  Color backGroundColorLite = const Color(0xFFD6DfE4);

  AppStyle({required isLite}) {
    moreStyle = GoogleFonts.poppins(
        height: 1,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: highLightColorDark);
    if (isLite) {
      primaryColor = primaryColorLite;
      highLightColor = highLightColorLite;
      descriptionColor = descriptionColorLite;
      cardColor = cardColorLite;
      backGroundColor = backGroundColorLite;
    } else {
      primaryColor = primaryColorDark;
      highLightColor = highLightColorDark;
      descriptionColor = descriptionColorDark;
      cardColor = cardColorDark;
      backGroundColor = backGroundColorDark;
    }
    headLine1Style = GoogleFonts.poppins(
        height: 1,
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: highLightColor);
    headLine2Style = GoogleFonts.poppins(
        height: 1,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: highLightColor);
    bodyTextStyle = GoogleFonts.montserrat(
        height: 1,
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: descriptionColor);
    descriptionStyle = GoogleFonts.montserrat(
        height: 1,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: highLightColor);
    exerciseStyle = GoogleFonts.montserrat(
        height: 1,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: descriptionColor);
  }
}

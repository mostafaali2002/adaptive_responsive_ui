import 'package:adaptive_responsive_ui/widgets/responsive_text.dart';
import 'package:flutter/material.dart';

abstract class AppStyle {
  static TextStyle kStyleSemiBold16 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveFont(fontSize: 16),
    fontFamily: "Montserrat",
    color: const Color(0xff064061),
  );
  static TextStyle kStyleSemiBold18 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveFont(fontSize: 18),
    fontFamily: "Montserrat",
    color: const Color(0xff4EB7F2),
  );
  static TextStyle kStyleSemiBold20 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveFont(fontSize: 20),
    fontFamily: "Montserrat",
    color: const Color(0xff064061),
  );
  static TextStyle kStyleSemiBold24 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveFont(fontSize: 24),
    fontFamily: "Montserrat",
    color: const Color(0xff4EB7F2),
  );
  static TextStyle kStyleReguler16 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveFont(fontSize: 16),
    fontFamily: "Montserrat",
    color: const Color(0xff064061),
  );
  static TextStyle kStyleReguler14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveFont(fontSize: 14),
    fontFamily: "Montserrat",
    color: const Color(0xffAAAAAA),
  );
  static TextStyle kStyleReguler12 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveFont(fontSize: 12),
    fontFamily: "Montserrat",
    color: const Color(0xffAAAAAA),
  );
  static TextStyle kStyleMeduim16 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: getResponsiveFont(fontSize: 16),
    fontFamily: "Montserrat",
    color: const Color(0xff064061),
  );
}

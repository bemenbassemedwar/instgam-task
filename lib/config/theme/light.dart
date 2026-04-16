import 'package:flutter/material.dart';
import 'package:instagram_task/config/theme/base.dart';

class LightThemeExtension extends BaseTheme {
  const LightThemeExtension({super.locale})
    : super(
        mainRed: const Color(0xFF9C282B),
        grayLight: const Color(0xFFF808390),
        pink: const Color(0xFFFF4C51),
        yellow: const Color(0xFFFF9F43),
        blue: const Color(0xFF00BAD1),
        green: const Color(0xFF28C76F),
        primarywhite:const Color(0xffFFFFFF),
        background: const Color(0xFFF8F8F8),
        mainBlack: const Color(0xff1A1A1A),
        red: const Color(0xff4E1F22)
      );

  ThemeData get theme => ThemeData(
    // fontFamily: FontFamily.poppins,
    primaryColor: mainRed,
    scaffoldBackgroundColor: grayLight,
    extensions: {this},
  );
}

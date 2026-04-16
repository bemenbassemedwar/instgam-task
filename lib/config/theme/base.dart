import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';
import 'package:flutter/material.dart';

part 'base.tailor.dart';

@TailorMixin(themeGetter: ThemeGetter.none)
class BaseTheme extends ThemeExtension<BaseTheme> with _$BaseThemeTailorMixin {
  const BaseTheme({
    required this.mainRed,
    required this.grayLight,
    required this.pink,
    required this.yellow,
    required this.blue,
    required this.green,
    required this.primarywhite,
    required this.mainBlack,
    required this.background,
      required this.red,

    this.locale = const Locale('en'),
  });

  @override
  final Color mainRed;
  @override
  final Color red;
  @override
  final Color background;
  @override
  final Color mainBlack;

  @override
  final Color grayLight;

  @override
  final Color pink;

  @override
  final Color yellow;


  @override
  final Color blue;
  
  @override
  final Color green;

  @override
  final Color primarywhite;

  @override
  final Locale locale;
}

import 'package:flutter/material.dart';
import 'package:instagram_task/config/theme/base.dart';

extension AppThemeExtension on BuildContext {
  BaseTheme get appTheme => Theme.of(this).extension<BaseTheme>()!;
}

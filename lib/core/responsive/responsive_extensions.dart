import 'package:flutter/material.dart';
import 'package:instagram_task/core/responsive/responsive_size.dart';

extension ResponsiveExtensions on BuildContext {
  double w(double w) => ResponsiveSize().scaleWidth(w, this);
  double h(double h) => ResponsiveSize().scaleHeight(h, this);
}

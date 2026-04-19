import 'package:flutter/material.dart';
import 'package:instagram_task/config/theme/theme_extension.dart';

class NavIcon extends StatelessWidget {
  final String path;

  const NavIcon({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage(path),
      color: context.appTheme.mainBlack, 
    );
  }
}
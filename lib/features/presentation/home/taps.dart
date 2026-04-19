import 'package:flutter/material.dart';
import 'package:instagram_task/config/theme/theme_extension.dart';
import 'package:instagram_task/core/responsive/responsive_extensions.dart';

class Taps extends StatelessWidget {
  const Taps({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:  [
      Image.asset('assets/png/Grid.png', width: context.w(16), height: context.h(18)),
      Image.asset('assets/png/Reels.png',  width: context.w(16), height: context.h(18),color: context.appTheme.grayLight,),
      Image.asset('assets/png/Repost.png',  width: context.w(16), height: context.h(18),color: context.appTheme.grayLight),
      
      Image.asset('assets/png/Tag.png',  width: context.w(16), height: context.h(18))  ],
      
      ),
    );

  }
}
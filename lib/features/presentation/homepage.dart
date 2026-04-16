import 'package:flutter/material.dart';
import 'package:instagram_task/config/theme/theme_extension.dart';
import 'package:instagram_task/features/presentation/home/bio.dart';
import 'package:instagram_task/features/presentation/home/edit_profile.dart';
import 'package:instagram_task/features/presentation/home/headersection.dart';
import 'package:instagram_task/features/presentation/home/navbar.dart';
import 'package:instagram_task/features/presentation/home/post.dart';
import 'package:instagram_task/features/presentation/home/profileinfo.dart';
import 'package:instagram_task/features/presentation/home/story.dart';
import 'package:instagram_task/features/presentation/home/taps.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appTheme.primarywhite,
  body: SafeArea(
    child: Column(
      children: [
        Headersection(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Profileinfo(),
                Bio(),
                EditProfile(),
                Story(),
                Taps(),
                Post(),
                // Navbar()
              ],
            ),
          ),
        ),
      ],
    ),
  ),
);
  }
}
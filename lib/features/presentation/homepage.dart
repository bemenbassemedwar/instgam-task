import 'package:flutter/material.dart';
import 'package:instagram_task/config/theme/theme_extension.dart';
import 'package:instagram_task/features/presentation/home/bio.dart';
import 'package:instagram_task/features/presentation/home/edit_profile.dart';
import 'package:instagram_task/features/presentation/home/headersection.dart';
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
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appTheme.primarywhite,

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            children: [
              Headersection(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Profileinfo(),
                      Bio(),
                      EditProfile(),
                      Story(),
                      Taps(),
                      Post(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: context.appTheme.mainBlack,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: context.appTheme.mainBlack,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box,color: context.appTheme.mainBlack,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message,color: context.appTheme.mainBlack,), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: context.appTheme.mainBlack,), label: ''),
        ],
      ),
    );
  }
}
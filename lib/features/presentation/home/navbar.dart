import 'package:flutter/material.dart';
import 'package:instagram_task/config/theme/theme_extension.dart';
import 'package:instagram_task/features/presentation/homepage.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    final pages = [
  const Homepage(), // 👈 move your current UI here
  const Center(child: Text("Search")),
  const Center(child: Text("Add")),
  const Center(child: Text("Reels")),
  const Center(child: Text("Profile")),
];
    return Scaffold(
  backgroundColor: context.appTheme.primarywhite,
  
  body:
  
   pages[currentIndex],

  bottomNavigationBar: BottomNavigationBar(
    currentIndex: currentIndex,
    onTap: (index) {
      setState(() {
        currentIndex = index;
      });
    },
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.add_box_outlined),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.video_library),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "",
      ),
    ],
  ),
);
  }
}
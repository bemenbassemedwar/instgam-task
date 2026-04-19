import 'package:flutter/material.dart';
import 'package:instagram_task/core/responsive/responsive_extensions.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
  shrinkWrap: true,
  physics: ScrollPhysics(),
  itemCount: 6,
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing: 2,
    mainAxisSpacing: 2,
  ),
  itemBuilder: (context, index) {
    return Image.asset(
      width: context.w(124),
      height: context.h(166),
      "assets/png/profile.png",
      fit: BoxFit.cover,
    );
  },
);
  }
}
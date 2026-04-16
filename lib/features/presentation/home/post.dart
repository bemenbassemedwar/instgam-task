import 'package:flutter/material.dart';
import 'package:instagram_task/core/responsive/responsive_extensions.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
  shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(),
  itemCount: 3,
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing: 2,
    mainAxisSpacing: 2,
  ),
  itemBuilder: (context, index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        width: context.w(100),
        "assets/png/profile.png",
        fit: BoxFit.cover,
      ),
    );
  },
);
  }
}
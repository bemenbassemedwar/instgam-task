import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String imagePath;
  final String title;

  const StoryItem({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 5),
        Text(title),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:instagram_task/core/responsive/responsive_extensions.dart';
import 'story_item.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    final stories = [
      {'image': 'assets/png/Content.png', 'title': 'New'},
      {'image': 'assets/png/profile.png', 'title': 'work'},
      {'image': 'assets/png/profile.png', 'title': 'friens'},
      {'image': 'assets/png/profile.png', 'title': 'JWsven'},
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: stories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: context.w(16)),
              child: StoryItem(
                imagePath: stories[index]['image']!,
                title: stories[index]['title']!,
              ),
            );
          },
        ),
      ),
    );
  }
}
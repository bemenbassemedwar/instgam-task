import 'package:flutter/material.dart';
import 'package:instagram_task/config/theme/theme_extension.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
  children: [
    Expanded(
      child: OutlinedButton(
        onPressed: () {},
        child:  Text("Edit profile",style: TextStyle(
          color: context.appTheme.mainBlack
        ),),
      ),
    ),
    const SizedBox(width: 10),
    Expanded(
      child: OutlinedButton(
        onPressed: () {},
        child:  Text("Share profile",style: TextStyle(
          color: context.appTheme.mainBlack
        ),),
      ),
    ),
  ],
);
  }
}
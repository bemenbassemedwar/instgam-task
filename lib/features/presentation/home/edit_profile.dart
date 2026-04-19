import 'package:flutter/material.dart';
import 'package:instagram_task/config/theme/theme_extension.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
      Expanded(
        child: OutlinedButton(
           style:  OutlinedButton.styleFrom(
            backgroundColor: context.appTheme.background,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
            side: BorderSide(color: context.appTheme.primarywhite),
          ) ,
          onPressed: () {},
          child:  Text("Edit profile",style: TextStyle(
            color: context.appTheme.mainBlack
          ),),
        ),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: OutlinedButton(
          style:  OutlinedButton.styleFrom(
          backgroundColor: context.appTheme.background,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
            side: BorderSide(color: context.appTheme.primarywhite),
          ) ,
          onPressed: () {},
          child:  Text("Share profile",style: TextStyle(
            color: context.appTheme.mainBlack
          ),),
        ),
      ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Bio extends StatelessWidget {
  const Bio({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Jack Chiorlu", style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                            Text("Digital creator"),
                            Text("Software Engineer | Workaholic 👨‍💻"),
                             Text("sapiosixual"),
                             Text("team breezy"),

                    ],
                  ),
                );
  }
}
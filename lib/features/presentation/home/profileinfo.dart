import 'package:flutter/material.dart';

class Profileinfo extends StatelessWidget {
  const Profileinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
  children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
              CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/png/profile.png'),
        ),
         Positioned(
        bottom: 0,
        right: 0,
        child: CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage('assets/png/Screenshot from 2026-04-16 13-02-49.png'),
        ),
      ),
        ]
        
      ),
    ),

    const SizedBox(width: 20),

    Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Column(
            children: [
              Text("14",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              Text("posts",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
            ],
          ),
          Column(
            children: [
              Text("1,633",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              Text("followers",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
            ],
          ),
          Column(
            children: [
              Text("1,376", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              Text("following",style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),
    ),
  ],
);}
}
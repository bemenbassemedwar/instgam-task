import 'package:flutter/material.dart';
import 'package:instagram_task/core/responsive/responsive_extensions.dart';

class Headersection extends StatelessWidget {
  const Headersection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      const Icon(Icons.add, size: 30),
      Row(
        children: const [
          Text("_jwsv en", style: TextStyle(fontSize: 25)),
          Icon(Icons.verified, color: Colors.blue, size: 16),
          Icon(Icons.arrow_circle_down_sharp)
        ],
      ),
      Row(
        children:  [
          ImageIcon(AssetImage('assets/png/tthreat.png')),
          SizedBox(width: context.w(10)),
          Icon(Icons.menu,size: 30),
        ],
      ),
        ],
      ),
    );
  }
}
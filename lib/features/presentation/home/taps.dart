import 'package:flutter/material.dart';

class Taps extends StatelessWidget {
  const Taps({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: const [
    Icon(Icons.grid_on),
    Icon(Icons.recycling),
    Icon(Icons.video_library),
    Icon(Icons.person),
  ],
);
  }
}
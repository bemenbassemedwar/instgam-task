import 'package:flutter/material.dart';

class Headersection extends StatelessWidget {
  const Headersection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      const Icon(Icons.add),
      Row(
        children: const [
          Text("_jwsv en", style: TextStyle(fontSize: 18)),
          Icon(Icons.verified, color: Colors.blue, size: 16),
        ],
      ),
      Row(
        children: const [
          Icon(Icons.menu),
        ],
      ),
        ],
      ),
    );
  }
}
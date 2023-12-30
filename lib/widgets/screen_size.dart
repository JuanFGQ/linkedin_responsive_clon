import 'package:flutter/material.dart';

class ScreenSize extends StatelessWidget {
  final String text;
  const ScreenSize({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    );
  }
}

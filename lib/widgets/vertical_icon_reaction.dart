import 'package:flutter/material.dart';

class VerticalIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  const VerticalIcon({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: const Color(0xff5e5e5e)),
        // const SizedBox(height: 10),
        Text(text, style: const TextStyle(color: Color(0xff5e5e5e)))
      ],
    );
  }
}

import 'package:flutter/material.dart';

class VerticalIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  const VerticalIcon({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitHeight,
      child: Column(
        children: [
          Icon(icon, color: const Color(0xff5e5e5e)),
          Text(text, style: const TextStyle(color: Color(0xff5e5e5e)))
        ],
      ),
    );
  }
}

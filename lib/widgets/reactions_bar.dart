import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReactionBar extends StatelessWidget {
  const ReactionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 13),
      width: 48,
      height: 18,
      child: const Stack(
        children: [
          _ReactionIcon(
              backGroundColor: Colors.blue, icon: FontAwesomeIcons.thumbsUp),
          Positioned(
              left: 12,
              top: 0,
              bottom: 0,
              child: _ReactionIcon(
                  backGroundColor: Colors.red, icon: FontAwesomeIcons.heart)),
          Positioned(
              left: 25,
              top: 0,
              bottom: 0,
              child: _ReactionIcon(
                  backGroundColor: Colors.greenAccent, icon: Icons.handshake)),
        ],
      ),
    );
  }
}

class _ReactionIcon extends StatelessWidget {
  final IconData icon;
  final Color backGroundColor;
  const _ReactionIcon({required this.icon, required this.backGroundColor});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: backGroundColor,
              border: Border.all(width: 1.5, color: Colors.white)),
          child: FittedBox(fit: BoxFit.fitHeight, child: FaIcon(icon))),
    );
  }
}

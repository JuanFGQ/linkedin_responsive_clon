import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function()? onPressed;
  const AppBarIcons({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    final margin = size < 600 ? 5.0 : 10.0;
    return Container(
      margin: EdgeInsets.only(left: margin, right: margin),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: onPressed,
              icon: Icon(icon, color: const Color(0xff666666))),
          Visibility(
            visible: size > 936 ? true : false,
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}

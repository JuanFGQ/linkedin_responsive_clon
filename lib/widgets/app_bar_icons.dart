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

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: Colors.grey,
                size: 30,
              )),
          Visibility(
            visible: size < 670 ? false : true,
            child: Text(
              text,
              style: const TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}



//553
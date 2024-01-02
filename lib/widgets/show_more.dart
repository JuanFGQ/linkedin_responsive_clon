import 'package:flutter/material.dart';

class ShowMore extends StatelessWidget {
  const ShowMore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Mostrar más',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 61, 61, 61)),
        ),
        Icon(
          Icons.keyboard_arrow_down_sharp,
          color: Color.fromARGB(255, 61, 61, 61),
        )
      ],
    );
  }
}

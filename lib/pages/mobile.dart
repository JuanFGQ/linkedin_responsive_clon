import 'package:flutter/material.dart';

class MobilePage extends StatelessWidget {
  final double? constraintsValue;

  const MobilePage({super.key, this.constraintsValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            Container(
              color: Colors.red,
              width: double.infinity,
              height: 65,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 50,
                    height: 50,
                    child: Image(image: AssetImage('linkedin.png')),
                  ),
                  Column(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.search))
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}

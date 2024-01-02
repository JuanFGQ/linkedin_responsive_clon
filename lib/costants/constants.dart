import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const borderColor = Color.fromARGB(92, 158, 158, 158);

const scaffoldBackgroundColor = Color(0xfff4f2ee);

const iconsColor = Color(0xff3b3b3b);

const textColor = Color(0xff939393);

const widgetsColor = Colors.white;

var menuMobileSizeIcon = const Padding(
  padding: EdgeInsets.all(8.0),
  child: FaIcon(FontAwesomeIcons.ellipsis),
);

var borderDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(0),
    border:
        Border.all(width: 1, color: const Color.fromARGB(92, 158, 158, 158)));

double dynamicMargin(double screenWidth) {
  if (screenWidth > 844) {
    return 110;
  } else if (screenWidth > 760) {
    return 64;
  } else if (screenWidth > 656) {
    return 10;
  } else if (screenWidth > 600) {
    return 0;
  } else {
    return 0;
  }
}

class BussinesIcon extends StatelessWidget {
  const BussinesIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Visibility(
            visible: size > 578 ? true : false,
            child: IconButton(
                onPressed: () {}, icon: Image.asset('assets/menu.png'))),
        Row(
          children: [
            Visibility(
                visible: size > 936 ? true : false,
                child: const Text('Para negocios')),
            const Icon(Icons.arrow_drop_down_outlined)
          ],
        )
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: size > 1340 ? 75 : 0),
        child: const TextField(
          decoration: InputDecoration(
            // fillColor: Color.fromARGB(255, 224, 223, 223),
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 2),
            prefixIcon: Icon(Icons.search),
            hintText: 'Buscar',
            hintStyle: TextStyle(fontSize: 17.0),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const borderColor = Color.fromARGB(92, 158, 158, 158);

const scaffoldBackgroundColor = Color(0xfff4f2ee);

const iconsColor = Color(0xff3b3b3b);

const textColor = Color(0xff939393);

var menuIcon = Column(
  children: [
    Container(
      // height: 20,
      child: IconButton(onPressed: () {}, icon: Image.asset('assets/menu.png')),
    ),
    const Row(
      children: [Text('Para negocios'), Icon(Icons.arrow_drop_down_outlined)],
    )
  ],
);

var searchTextField = Expanded(
  child: TextFormField(
      onChanged: (value) {},
      decoration: const InputDecoration(
          iconColor: Colors.black,
          prefixIconColor: Colors.black,
          border: InputBorder.none,
          // utlineInputBorder(
          //     borderSide: BorderSide(color: Colors.yellow, width: 2.0)),
          labelText: 'Buscar',
          suffixIconColor: Colors.black,
          prefixIcon: Icon(Icons.search))),
);

var menuMobileSizeIcon = const Padding(
  padding: EdgeInsets.all(8.0),
  child: FaIcon(FontAwesomeIcons.ellipsis),
);

var borderDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(0),
    border:
        Border.all(width: 1, color: const Color.fromARGB(92, 158, 158, 158)));

double dynamicMargin(double screenWidth) {
  // WIDGETS MARGIN
  //>600 0 de margen
  //656 a 10 de margen
  //760 a 64 de margen
  //844 a 110 de margen
  //844 > pass to desktop
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

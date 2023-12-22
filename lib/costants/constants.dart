// import 'package:flutter/material.dart';

// var size = MediaQuery.of(BuildContext context).size.width;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var menuIcon =
    IconButton(onPressed: () {}, icon: Image.asset('assets/menu.png'));

var searchTextField = Expanded(
  child: TextFormField(
      decoration: const InputDecoration(
          iconColor: Colors.black,
          prefixIconColor: Colors.black,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(100))),
          labelText: 'Buscar',
          suffixIconColor: Colors.black,
          prefixIcon: Icon(Icons.search))),
);

var menuMobileSizeIcon = const Padding(
  padding: EdgeInsets.all(8.0),
  child: FaIcon(FontAwesomeIcons.ellipsis),
);

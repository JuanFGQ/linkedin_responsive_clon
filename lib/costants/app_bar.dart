import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/provider/provider.dart';
import 'package:provider/provider.dart';

import '../widgets/app_bar_icons.dart';

//////////////////////////////////////////////////////////*

class AppBarWidget extends StatelessWidget {
  final Widget searchItem;
  final Widget menuItem;
  const AppBarWidget(
      {super.key, required this.searchItem, required this.menuItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: 40,
            height: 40,
            child: const Image(image: AssetImage('assets/linkedin.png')),
          ),
          searchItem,
          AppBarIcons(icon: Icons.home, text: 'Incio', onPressed: () {}),
          AppBarIcons(icon: Icons.people, text: 'Mi red', onPressed: () {}),
          AppBarIcons(
              icon: Icons.cases_rounded, text: 'Empleos', onPressed: () {}),
          AppBarIcons(icon: Icons.chat, text: 'Mensajes', onPressed: () {}),
          AppBarIcons(
              icon: Icons.notifications,
              text: 'Notificaciones',
              onPressed: () {}),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/mylogo.png'),
              // child: Text('asdas'),
            ),
          ),
          menuItem
        ],
      ),
    );
  }
}

 
//////////////////////////////////////////////////////////*

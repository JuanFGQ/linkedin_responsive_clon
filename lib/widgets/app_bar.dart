import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/provider/provider.dart';
import 'package:provider/provider.dart';

import 'app_bar_icons.dart';

class AppBarWidget extends StatelessWidget {
  final Widget searchItem;
  final Widget menuItem;

  const AppBarWidget({
    super.key,
    required this.searchItem,
    required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: 40,
            height: 40,
            child: const Image(image: AssetImage('assets/linkedin.png')),
          ),
          const Spacer(),

          searchItem,
          const Spacer(),

          AppBarIcons(icon: Icons.home, text: 'Inicio', onPressed: () {}),
          const Spacer(),
          AppBarIcons(icon: Icons.people, text: 'Mi red', onPressed: () {}),
          const Spacer(),

          AppBarIcons(
              icon: Icons.cases_rounded, text: 'Empleos', onPressed: () {}),
          const Spacer(),

          AppBarIcons(icon: Icons.chat, text: 'Mensajes', onPressed: () {}),
          const Spacer(),

          AppBarIcons(
              icon: Icons.notifications,
              text: 'Notificaciones',
              onPressed: () {}),
          const Spacer(),

          Column(
            children: [
              const CircleAvatar(
                  radius: 14, backgroundImage: AssetImage('assets/mylogo.png')),
              Visibility(
                visible: size > 600 ? true : false,
                child: const Row(
                  children: [Text('Yo'), Icon(Icons.arrow_drop_down_sharp)],
                ),
              )
            ],
          ),
          const Spacer(),

          // const SizedBox(width: 30),
          menuItem,
          // Visibility(
          //   visible: size > 600 ? true : false,
          //   child: SizedBox(width: 250),
          // )
        ],
      ),
    );
  }
}

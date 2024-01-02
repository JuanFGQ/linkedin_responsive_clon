import 'package:flutter/material.dart';

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
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(width: 1, color: Colors.grey))),
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(width: size > 1340 ? 140 : 0),
          _LinkedInMainLogo(),
          //*
          searchItem,
          //*
          const Visibility(visible: true, child: SizedBox(width: 10)),
          AppBarIcons(icon: Icons.home, text: 'Inicio', onPressed: () {}),
          AppBarIcons(icon: Icons.people, text: 'Mi red', onPressed: () {}),
          AppBarIcons(
              icon: Icons.cases_rounded, text: 'Empleos', onPressed: () {}),
          AppBarIcons(icon: Icons.chat, text: 'Mensajes', onPressed: () {}),
          AppBarIcons(
              icon: Icons.notifications,
              text: 'Notificaciones',
              onPressed: () {}),
          const SizedBox(width: 15),
          _UserCircleAvatar(size: size),
          const SizedBox(width: 25),
          //*
          menuItem,
          //*
          const SizedBox(width: 10),
          Visibility(
              visible: size > 600 ? true : false, child: const _PremiumBanner())
        ],
      ),
    );
  }
}

class _LinkedInMainLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: 40,
      height: 40,
      child: const Image(image: AssetImage('assets/linkedin.png')),
    );
  }
}

class _UserCircleAvatar extends StatelessWidget {
  const _UserCircleAvatar({
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 14,
          backgroundColor: Colors.grey,
          // backgroundImage: AssetImage('assets/mylogo.png'),
        ),
        Visibility(
          visible: size > 600 ? true : false,
          child: const Row(
            children: [Text('Yo'), Icon(Icons.arrow_drop_down_sharp)],
          ),
        )
      ],
    );
  }
}

class _PremiumBanner extends StatelessWidget {
  const _PremiumBanner();

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      flex: 1,
      child: Text(
        'Reactiva Premium con un -50%',
        maxLines: 3,
        textAlign: TextAlign.center,
        style: TextStyle(
            decoration: TextDecoration.underline,
            color: Color.fromARGB(255, 134, 80, 76)),
      ),
    );
  }
}

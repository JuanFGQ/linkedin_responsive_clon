import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/widgets/app_bar.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';
import 'package:linkedin_responsive_clon/widgets/user_profile.dart';
import 'package:linkedin_responsive_clon/widgets/user_create_post.dart';
import 'package:linkedin_responsive_clon/widgets/user_post.dart';

import '../widgets/app_bar_icons.dart';
import '../widgets/mostrar_mas.dart';

class SmallPage extends StatelessWidget {
  const SmallPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print('MOBILE WIDTH ${size.width}');
    print('MOBILE HEIGHT ${size.height}');

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(65),
            child: AppBarWidget(
              menuItem: menuMobileSizeIcon,
              searchItem: AppBarIcons(
                  icon: Icons.search, text: 'Buscar', onPressed: () {}),
            )),
        backgroundColor: scaffoldBackgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const UserProfile(),
                const MostrarMas(),
                const UserCreatePost(),
                const SizedBox(height: 20),
                const UserPost(),
                const SizedBox(height: 20),

                const UserPost(),
//
              ],
            ),
          ),
        ));
  }
}

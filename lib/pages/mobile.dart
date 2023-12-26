import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/widgets/app_bar.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';
import 'package:linkedin_responsive_clon/widgets/user_profile.dart';
import 'package:linkedin_responsive_clon/widgets/user_create_post.dart';
import 'package:linkedin_responsive_clon/widgets/user_post.dart';

import '../widgets/app_bar_icons.dart';
import '../widgets/show_more.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print('MOBILE WIDTH ${size.width}');
    print('MOBILE HEIGHT ${size.height}');

    return Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppBarWidget(
                  menuItem: menuMobileSizeIcon,
                  searchItem: AppBarIcons(
                      icon: Icons.search, text: 'Buscar', onPressed: () {}),
                ),
                const UserProfile(),
                // const MostrarMas(),
                // const UserCreatePost(),
                const SizedBox(height: 20),
                const UserPost(),
                const SizedBox(height: 20),

                const UserPost(),
//
                // SizedBox(height: 200)
              ],
            ),
          ),
        ));
  }
}

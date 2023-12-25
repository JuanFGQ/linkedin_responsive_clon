import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_responsive_clon/widgets/app_bar.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';
import 'package:linkedin_responsive_clon/widgets/user_profile.dart';
import 'package:linkedin_responsive_clon/widgets/user_create_post.dart';
import 'package:linkedin_responsive_clon/widgets/user_post.dart';

import '../widgets/app_bar_icons.dart';
import '../widgets/show_more.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  // final bool searchBar;

  // const MobilePage({super.key, required this.searchBar});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBarWidget(
                menuItem: menuMobileSizeIcon,
                searchItem: AppBarIcons(
                    icon: Icons.search, text: 'Buscar', onPressed: () {}),
              ),
              const UserProfile(),
              const MostrarMas(),
              const UserCreatePost(),
              const SizedBox(height: 20),
              const UserPost(),
              const SizedBox(height: 20),

              const UserPost(),

              // SizedBox(height: 200)
            ],
          ),
        ));
  }
}

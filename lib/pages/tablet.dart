import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/widgets/app_bar.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';
import 'package:linkedin_responsive_clon/widgets/user_profile.dart';

import '../widgets/mostrar_mas.dart';
import '../widgets/user_create_post.dart';
import '../widgets/user_post.dart';

class TabletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppBarWidget(
                menuItem: menuIcon,
                searchItem: searchTextField,
              ),
              const UserProfile(),
              const MostrarMas(),
              const UserCreatePost(),
              const SizedBox(height: 20),
              const UserPost(),
              const SizedBox(height: 20),
              const UserPost(),
            ],
          ),
        ));
  }
}

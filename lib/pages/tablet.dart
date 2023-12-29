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
    return const Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(65),
            child: AppBarWidget(
              menuItem: BussinesIcon(),
              searchItem: CustomTextField(),
            )),
        backgroundColor: scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              UserProfile(),
              MostrarMas(),
              UserCreatePost(),
              SizedBox(height: 20),
              UserPost(),
              SizedBox(height: 20),
              UserPost(),
            ],
          ),
        ));
  }
}

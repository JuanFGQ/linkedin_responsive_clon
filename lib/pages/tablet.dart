import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/widgets/app_bar.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';
import 'package:linkedin_responsive_clon/widgets/user_profile.dart';

import '../widgets/mostrar_mas.dart';
import '../widgets/screen_size.dart';
import '../widgets/user_create_post.dart';
import '../widgets/user_post.dart';

class TabletPage extends StatelessWidget {
  const TabletPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Scaffold(
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
              // ScreenSize(text: 'TABLET ${size.toInt()}'),
              UserProfile(),
              ShowMore(),
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

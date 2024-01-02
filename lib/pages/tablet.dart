import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/widgets/app_bar_widget.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';
import 'package:linkedin_responsive_clon/widgets/user_profile.dart';

import '../widgets/show_more.dart';
import '../widgets/screen_size.dart';
import '../widgets/user_create_post.dart';
import '../widgets/user_post.dart';

class TabletPage extends StatelessWidget {
  const TabletPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(65),
            child: AppBarWidget(
              menuItem: BussinesIcon(),
              searchItem: CustomTextField(),
            )),
        backgroundColor: scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ScreenSize(text: 'TABLET ${size.toInt()}'),
              const UserProfile(),
              const ShowMore(),
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

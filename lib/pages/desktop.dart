import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/widgets/app_bar.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';
import 'package:linkedin_responsive_clon/widgets/linked_in_news.dart';
import 'package:linkedin_responsive_clon/widgets/news_colum.dart';
import 'package:linkedin_responsive_clon/widgets/user_profile.dart';
import 'package:linkedin_responsive_clon/widgets/user_create_post.dart';
import 'package:linkedin_responsive_clon/widgets/user_post.dart';
import 'package:linkedin_responsive_clon/widgets/user_recently_viewed.dart';

import '../widgets/premium_box.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final margin = size.width > 1093.0 ? 15.0 : 95.0;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(65.0),
          child: AppBarWidget(
            menuItem: BussinesIcon(),
            searchItem: CustomTextField(),
          )),
      backgroundColor: scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // const AppBarWidget(
            //   menuItem: BussinesIcon(),
            //   searchItem: CustomTextField(),
            // ),
            Container(
                margin: EdgeInsets.only(top: 30, left: margin, right: margin),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: size.width > 1340 ? 130 : 15),
                      FirstColum(size: size),
                      const SizedBox(width: 25),
                      SecondColum(size: size),
                      const SizedBox(width: 25),
                      ThirdColum(size: size),
                      SizedBox(width: size.width > 1340 ? 120 : 0),
                    ]))
          ],
        ),
      ),
    );
  }
}

class FirstColum extends StatelessWidget {
  final Size size;
  const FirstColum({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      width: size.width * 0.16,
      child: const Column(
        children: [UserProfile(), UserRecentlyViewed()],
      ),
    );
  }
}

class SecondColum extends StatelessWidget {
  final Size size;

  const SecondColum({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const UserCreatePost(),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: Container(height: 1, color: Colors.grey),
              ),
              const SizedBox(width: 15),
              const Text('Seleccionar vista del feed:',
                  style: TextStyle(color: Colors.grey)),
              const Text(' Primero lo mas relevante ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const Icon(Icons.arrow_drop_down)
            ],
          ),
          const UserPost(),
        ],
      ),
    );
  }
}

class ThirdColum extends StatelessWidget {
  //1094
  final Size size;

  const ThirdColum({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: size.width > 1093 ? true : false,
      child: Container(
        margin: const EdgeInsets.only(top: 15, right: 25),
        child: const Column(
          children: [
            LinkedInNews(),
            SizedBox(height: 15),
            PremiumBox(),
          ],
        ),
      ),
    );
  }
}

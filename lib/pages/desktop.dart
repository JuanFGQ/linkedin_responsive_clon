import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/widgets/app_bar.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';
import 'package:linkedin_responsive_clon/widgets/linked_in_news.dart';
import 'package:linkedin_responsive_clon/widgets/news_colum.dart';
import 'package:linkedin_responsive_clon/widgets/user_profile.dart';
import 'package:linkedin_responsive_clon/widgets/user_create_post.dart';
import 'package:linkedin_responsive_clon/widgets/user_post.dart';
import 'package:linkedin_responsive_clon/widgets/user_recently_viewed.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final margin = size.width > 1093.0 ? 15.0 : 95.0;
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarWidget(
              menuItem: menuIcon,
              searchItem: searchTextField,
            ),
            Container(
                margin: EdgeInsets.only(top: 30, left: margin, right: margin),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FirstColum(size: size),
                      const SizedBox(width: 12),
                      SecondColum(size: size),
                      const SizedBox(width: 20),
                      Visibility(
                          visible: size.width > 1093 ? true : false,
                          child: ThirdColum(size: size))
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
      width: size.width * 0.24,
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
    return const Expanded(
      child: Column(
        children: [
          UserCreatePost(),
          SizedBox(height: 50),
          UserPost(),
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
    return Container(
      margin: const EdgeInsets.only(top: 15, right: 25),
      child: const Column(
        children: [LinkedInNews()],
      ),
    );
  }
}

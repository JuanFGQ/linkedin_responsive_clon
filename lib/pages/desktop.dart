import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/widgets/app_bar.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';
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
                margin: const EdgeInsets.only(top: 30, left: 95, right: 95),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FirstColum(size: size),
                      const SizedBox(width: 30),
                      SecondColum(size: size),
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
    return Expanded(
      child: Container(
        // color: Colors.red,
        child: const Column(
          children: [
            UserCreatePost(),
            SizedBox(height: 50),
            UserPost(),
          ],
        ),
      ),
    );
  }
}

class ThirdColum extends StatelessWidget {
  final Size size;

  const ThirdColum({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [Placeholder()],
      ),
    );
  }
}

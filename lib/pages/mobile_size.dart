import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/widgets/user_post.dart';

class MobileSize extends StatelessWidget {
  const MobileSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      // bottomNavigationBar: ,
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [UserPost()],
        ),
      )),
    );
  }
}

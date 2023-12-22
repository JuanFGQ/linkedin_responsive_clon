import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/costants/app_bar.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          AppBarWidget(
            menuItem: menuIcon,
            searchItem: Expanded(child: searchTextField),
          )
        ],
      ),
    );
  }
}

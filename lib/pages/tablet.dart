import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/costants/app_bar.dart';
import 'package:linkedin_responsive_clon/costants/constants.dart';

class TabletPage extends StatelessWidget {
  // final bool searchBar;
  // const TabletPage({required this.searchBar});

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
        ));
  }
}

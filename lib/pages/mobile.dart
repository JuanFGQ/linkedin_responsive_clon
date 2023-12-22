import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/costants/app_bar.dart';

import '../widgets/app_bar_icons.dart';

class MobilePage extends StatelessWidget {
  // final bool searchBar;

  // const MobilePage({super.key, required this.searchBar});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            AppBarWidget(
                searchItem: AppBarIcons(
                    icon: Icons.search, text: 'Buscar', onPressed: () {})),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/pages/desktop.dart';
import 'package:linkedin_responsive_clon/pages/mobile.dart';
import 'package:linkedin_responsive_clon/pages/tablet.dart';

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return MobilePage();
        } else if (constraints.maxWidth < 950) {
          print('TABLET ${constraints.maxWidth}');
          return TabletPage();
        } else {
          print('DESK ${constraints.maxWidth}');

          return const DesktopPage();
        }
      },
    );
  }
}

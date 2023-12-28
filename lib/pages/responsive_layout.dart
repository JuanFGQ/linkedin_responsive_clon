import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/pages/desktop.dart';
import 'package:linkedin_responsive_clon/pages/small_page.dart';
import 'package:linkedin_responsive_clon/pages/mobile_size.dart';
import 'package:linkedin_responsive_clon/pages/tablet.dart';

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 400) {
          print('PHONE ${constraints.maxWidth}');

          return MobileSize();
        } else if (constraints.maxWidth < 600) {
          print('TABLET ${constraints.maxWidth}');
          return SmallPage();
        } else if (constraints.maxWidth < 950) {
          print('TABLET ${constraints.maxWidth}');

          return TabletPage();
        } else {
          print('DESK ${constraints.maxWidth}');
          //1094

          return const DesktopPage();
        }
      },
    );
  }
}

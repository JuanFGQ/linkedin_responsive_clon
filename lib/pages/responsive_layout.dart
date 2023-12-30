import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/pages/desktop.dart';
import 'package:linkedin_responsive_clon/pages/small_page.dart';
import 'package:linkedin_responsive_clon/pages/mobile_size.dart';
import 'package:linkedin_responsive_clon/pages/tablet.dart';

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return const MobileSize();
        } else if (constraints.maxWidth < 600) {
          return const SmallPage();
        } else if (constraints.maxWidth < 950) {
          return const TabletPage();
        } else {
          return const DesktopPage();
        }
      },
    );
  }
}

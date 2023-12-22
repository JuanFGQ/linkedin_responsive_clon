import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/pages/desktop.dart';
import 'package:linkedin_responsive_clon/pages/mobile.dart';
import 'package:linkedin_responsive_clon/pages/tablet.dart';
import 'package:linkedin_responsive_clon/provider/provider.dart';
import 'package:provider/provider.dart';

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    if (size < 600) {
      print('MOBILE $size');

      return MobilePage();
    } else if (size < 900) {
      print('TABLET $size');
      return TabletPage();
    } else {
      print('DESKTOP $size');

      return const DesktopPage();
    }
    //   },
    // );
  }
}

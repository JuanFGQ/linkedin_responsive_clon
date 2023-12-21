import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/pages/desktop.dart';
import 'package:linkedin_responsive_clon/pages/mobile.dart';
import 'package:linkedin_responsive_clon/pages/responsive_layout.dart';
import 'package:linkedin_responsive_clon/pages/tablet.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: ResponsiveHome(
            mobileWidget: MobilePage(),
            tabletWidget: TabletPage(),
            desktopWidget: DesktopPage()));
  }
}

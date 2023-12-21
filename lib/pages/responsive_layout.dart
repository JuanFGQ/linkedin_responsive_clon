import 'package:flutter/material.dart';

class ResponsiveHome extends StatelessWidget {
  final Widget mobileWidget;
  final Widget tabletWidget;
  final Widget desktopWidget;

  const ResponsiveHome(
      {super.key,
      required this.mobileWidget,
      required this.tabletWidget,
      required this.desktopWidget});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileWidget;
        } else if (constraints.maxWidth < 1100) {
          return tabletWidget;
        } else {
          return desktopWidget;
        }
      },
    );
  }
}

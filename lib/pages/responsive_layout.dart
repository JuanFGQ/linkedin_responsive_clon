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
        if (constraints.maxWidth < 600) {
          print(constraints.maxWidth);
          return mobileWidget;
        } else if (constraints.maxWidth < 900) {
          print(constraints.maxWidth);

          return tabletWidget;
        } else {
          print(constraints.maxWidth);

          return desktopWidget;
        }
      },
    );
  }
}

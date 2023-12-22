import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/pages/desktop.dart';
import 'package:linkedin_responsive_clon/pages/mobile.dart';
import 'package:linkedin_responsive_clon/pages/responsive_layout.dart';
import 'package:linkedin_responsive_clon/pages/tablet.dart';
import 'package:linkedin_responsive_clon/provider/provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ConstraintsProv(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: ResponsiveHome()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:linkedin_responsive_clon/costants/app_bar.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AppBarWidget(
            searchItem: Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Buscar', prefixIcon: Icon(Icons.search)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

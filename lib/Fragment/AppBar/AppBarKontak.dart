import 'package:flutter/material.dart';

class AppBarKontak extends StatelessWidget {
  const AppBarKontak({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(
        child: Text(
          "Data Kontak",
          style: TextStyle(fontSize: 13),
        ),
      ),
    );
  }
}

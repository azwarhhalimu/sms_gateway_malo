import 'package:flutter/material.dart';

class AppBarPesan extends StatelessWidget {
  const AppBarPesan({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(
          "Data Pesan Broadcast",
          style: TextStyle(fontSize: 13),
        ),
      ),
    );
  }
}

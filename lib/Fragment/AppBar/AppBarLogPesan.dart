import 'package:flutter/material.dart';

class AppBarLogPesan extends StatelessWidget {
  const AppBarLogPesan({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(
          "Data Log Pesan",
          style: TextStyle(fontSize: 13),
        ),
      ),
    );
  }
}

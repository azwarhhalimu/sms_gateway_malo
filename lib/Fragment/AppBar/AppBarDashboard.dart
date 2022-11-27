import 'package:flutter/material.dart';

import '../../Warna.dart';

class AppBarDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo.png",
            scale: 4,
          ),
          Container(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Aplikasi Broadcast WhatsApp",
                style: TextStyle(fontSize: 14, color: warna_textToolba),
              ),
              Text(
                "Universitas Dayanu Iksanuddin",
                style: TextStyle(fontSize: 10, color: warna_textToolba),
              ),
            ],
          )
        ],
      ),
    );
  }
}

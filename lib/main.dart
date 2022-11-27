import 'package:akmalo_mobile/Fragment/Page/Grup/Edit_grup.dart';
import 'package:akmalo_mobile/Fragment/Page/Grup/Tambah_Grup.dart';
import 'package:akmalo_mobile/Main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Apliksi Sms Gate way",
        initialRoute: "/",
        routes: {
          Main_page().routeName: (context) => Main_page(),
          Tambah_grup().routeName: (context) => Tambah_grup(),
        });
  }
}

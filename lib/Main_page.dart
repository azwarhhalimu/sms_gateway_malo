import 'package:akmalo_mobile/Data.dart';
import 'package:akmalo_mobile/Fragment/AppBar/AppBarDashboard.dart';
import 'package:akmalo_mobile/Fragment/AppBar/AppBarGrup.dart';
import 'package:akmalo_mobile/Fragment/AppBar/AppBarKontak.dart';
import 'package:akmalo_mobile/Fragment/AppBar/AppBarLogPesan.dart';
import 'package:akmalo_mobile/Fragment/AppBar/AppBarPesan.dart';
import 'package:akmalo_mobile/Fragment/Dashboard.dart';
import 'package:akmalo_mobile/Fragment/Grup.dart';
import 'package:akmalo_mobile/Fragment/Kontak.dart';
import 'package:akmalo_mobile/Fragment/Log_pesan.dart';
import 'package:akmalo_mobile/Fragment/Pesan.dart';
import 'package:akmalo_mobile/Warna.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Main_page extends StatelessWidget {
  final String routeName = "/";
  const Main_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _Main_page(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _Main_page extends StatefulWidget {
  const _Main_page({super.key});

  @override
  State<_Main_page> createState() => __Main_pageState();
}

class __Main_pageState extends State<_Main_page> {
  int index = 0;

  final List<Widget> page = [
    Dashboard(),
    Kontak(),
    Grup(),
    Pesan(),
    Log_pesan(),
  ];
  final List<Widget> _listAppbar = [
    AppBarDashboard(),
    AppBarKontak(),
    AppBarGrup(),
    AppBarPesan(),
    AppBarLogPesan()
  ];
  Widget _appBar = AppBarDashboard();

  Widget _page = Dashboard();

  _setMenu(item) {
    setState(() {
      index = item;
      _page = page[item];
      _appBar = _listAppbar[item];
    });
  }

  _Pager() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: _appBar,
      ),
      body: _page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) => _setMenu(value),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_work),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: "Kontak",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_add),
            label: "Grup",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: "Pesan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tram_sharp),
            label: "Log Pesan",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
      ),
    );
  }
}

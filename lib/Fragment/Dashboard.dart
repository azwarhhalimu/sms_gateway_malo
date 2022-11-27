import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Data.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Dashboard_info(),
          _Grup(),
          _Pesan_terbaru(),
        ],
      ),
    );
  }
}

_Pesan_terbaru() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Text(
          "Pesan Terbaru Yang Dikirm",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        child: Column(
          children: [
            for (int i = 0; i < 5; i++) _itemPesan_terbaru(i),
          ],
        ),
      ),
    ],
  );
}

_itemPesan_terbaru(int index) {
  var warna = (index % 2 == 0)
      ? Color.fromARGB(255, 255, 236, 217)
      : Color.fromARGB(255, 238, 217, 255);
  return Container(
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(4), color: warna),
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(
      left: 15,
      right: 15,
      bottom: 4,
      top: 15,
    ),
    child: Row(
      children: [
        Container(
          width: 50,
          child: Column(
            children: [
              Text(
                "25",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "Desember",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              Text("2022",
                  style: TextStyle(
                    fontSize: 10,
                  )),
            ],
          ),
        ),
        Container(
          width: 15,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Judul Pesan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Saya Pergi ke pasar dengan wa umi dan la koko",
              style:
                  TextStyle(fontSize: 12, color: Color.fromARGB(160, 0, 0, 0)),
            ),
          ],
        )),
      ],
    ),
  );
}

_Grup() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: EdgeInsets.only(left: 15, bottom: 10),
        child: Text(
          "Grup Kontak",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 15,
            ),
            for (int i = 0; i < grup.length; i++)
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                        width: 1, color: Color.fromARGB(65, 0, 0, 0))),
                child: Text(grup[i]),
              )
          ],
        ),
      ),
    ],
  );
}

_Dashboard_info() {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
                child: _itemDashboard_info(
                    "Sisa Saldo",
                    "Rp.200.000",
                    "Exp. 12 Desember 2022",
                    CupertinoIcons.money_dollar,
                    Colors.purple)),
            Container(
              width: 15,
            ),
            Expanded(
              child: _itemDashboard_info(
                "Pengeluran",
                "Rp.50.000",
                "Biaya Per Pesan Rp. 230",
                Icons.report,
                Colors.orange,
              ),
            ),
          ],
        ),
        Container(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
                child: _itemDashboard_info(
                    "Jumlah Kontak",
                    "2",
                    "Exp. 12 Desember 2022",
                    CupertinoIcons.money_dollar,
                    Colors.blue)),
            Container(
              width: 15,
            ),
            Expanded(
                child: _itemDashboard_info("Pengeluran", "Rp.50.000",
                    "Biaya Per Pesan Rp. 230", Icons.report, Colors.red)),
          ],
        )
      ],
    ),
  );
}

_itemDashboard_info(
    String label, String value, String bottom, IconData aicon, Color color) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Stack(
      children: [
        Positioned(
          child: Icon(
            aicon,
            size: 40,
            color: Colors.white38,
          ),
          right: 0,
          top: 0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: TextStyle(fontSize: 12, color: Colors.white)),
            Text(
              value,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 10,
            ),
            Text(
              bottom,
              style: TextStyle(
                fontSize: 9,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

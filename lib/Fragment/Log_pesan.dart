import 'dart:convert';

import 'package:akmalo_mobile/Data.dart';
import 'package:akmalo_mobile/Fragment/Widget_list/List_Log_pesan.dart';
import 'package:akmalo_mobile/Http_api/Get_log_pesan.dart';
import 'package:flutter/material.dart';

class Log_pesan extends StatefulWidget {
  const Log_pesan({super.key});

  @override
  State<Log_pesan> createState() => _Log_pesanState();
}

class _Log_pesanState extends State<Log_pesan> {
  List data = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _load();
  }

  void _load() {
    getLogPesan().then((value) {
      var data1 = json.decode(value)["data"];
      setState(() {
        data = data1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 0; i < data.length; i++)
            List_log_pesan(
              data[i]["nama_kontak"][0],
              data[i]["nama_kontak"],
              data[i]["nomor_handphone"],
              data[i]["time"],
            )
        ],
      ),
    );
  }
}

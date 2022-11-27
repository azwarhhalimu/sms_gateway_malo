import 'dart:convert';

import 'package:akmalo_mobile/Fragment/Widget_list/List_item_grup.dart';
import 'package:akmalo_mobile/Http_api/Get_data_grup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grup extends StatefulWidget {
  const Grup({super.key});

  @override
  State<Grup> createState() => _GrupState();
}

class _GrupState extends State<Grup> {
  List data = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    load();
  }

  load() {
    getDataGrup().then((value) {
      var data2 = json.decode(value);
      setState(() {
        data = data2["data"];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: ((context, i) {
            String no = (i + 1).toString();
            return List_item_grup(no, data[i]["nama_grup"], data[i]["id_grup"]);
          })),
    );
  }
}

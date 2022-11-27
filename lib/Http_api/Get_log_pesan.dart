import 'dart:convert';

import 'package:akmalo_mobile/Global_variabel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<String> getLogPesan() async {
  String uri = GlobalVariabel().baseUrl("broadcast_pesan/get_log_pesan.php");
  Uri url = Uri.parse(uri);
  String data;
  var respon = await http.post(url);
  if (respon.statusCode == 200) {
    return respon.body;
  }
  return "terjadi_masalah";
}

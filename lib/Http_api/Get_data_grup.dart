import 'package:akmalo_mobile/Global_variabel.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

Future<String> getDataGrup() async {
  var respon = await http
      .post(Uri.parse(GlobalVariabel().baseUrl("grup/get_all_grup.php")));
  if (respon.statusCode == 200) {
    return respon.body;
  }
  return "terjadi_masalah";
}

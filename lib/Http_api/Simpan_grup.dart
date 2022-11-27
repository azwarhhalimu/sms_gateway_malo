import 'package:akmalo_mobile/Global_variabel.dart';
import 'package:http/http.dart' as http;

Future<String> Simpan_grup(String grup) async {
  Uri url = Uri.parse(GlobalVariabel().baseUrl("grup/simpan_grup.php"));
  var respon = await http.post(url, body: {"nama_grup": grup});
  if (respon.statusCode == 200) {
    return "data_tersimpan";
  }
  return "terjadi_masalah";
}

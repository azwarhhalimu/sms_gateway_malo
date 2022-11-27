import 'package:akmalo_mobile/Global_variabel.dart';
import 'package:http/http.dart' as http;

Future<String> Update_grup(String id_grup, nama_grup) async {
  Uri url = Uri.parse(GlobalVariabel().baseUrl("grup/update_grup.php"));
  var res =
      await http.post(url, body: {"id_grup": id_grup, "nama_grup": nama_grup});
  if (res.statusCode == 200) {
    print(res.body);
    return "data_berhasil_diupdate";
  }
  return "terjadi_kesalahan";
}

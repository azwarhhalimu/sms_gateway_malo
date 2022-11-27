import 'package:akmalo_mobile/Global_variabel.dart';
import 'package:http/http.dart' as http;

Future<String> hapus_grup(String id_grup) async {
  String url = GlobalVariabel().baseUrl("grup/hapus_grup.php");
  var respon = await http.post(Uri.parse(url), body: {"id_grup": id_grup});
  if (respon.statusCode == 200) {
    print(respon.body);
    return "grup_terhapus";
  }
  return "terjadi_kesalahan";
}

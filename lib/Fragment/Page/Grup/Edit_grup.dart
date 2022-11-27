import 'package:akmalo_mobile/Http_api/Simpan_grup.dart';
import 'package:akmalo_mobile/Http_api/Update_grup.dart';
import 'package:flutter/material.dart';

class Edit_grup extends StatefulWidget {
  String routeName = "/edit_grup";
  String id;
  String nama;
  Edit_grup(this.id, this.nama);

  @override
  State<Edit_grup> createState() => _Edit_grupState(id, nama);
}

class _Edit_grupState extends State<Edit_grup> {
  String id;
  String nama;
  _Edit_grupState(this.id, this.nama);
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initStat

    this._controller = TextEditingController()..text = nama;
    print(nama);
    print(id);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  _simpan_grup() {
    Simpan_grup(_controller.text).then((value) {
      if (value == "data_tersimpan") {
        Navigator.pop(context, "refresh");
      }
    });
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Edit Grup",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Masukkan grup"),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nama grup tidak boleh kosong";
                      }
                      return null;
                    },
                    controller: _controller,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Update_grup(id, _controller.text).then((value) {
                                if (value == "data_berhasil_diupdate") {
                                  Navigator.pop(context);
                                }
                              });
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("menyimpan data...")));
                            }
                          },
                          child: Text("Simpan Grup")))
                ],
              )),
        ));
  }
}

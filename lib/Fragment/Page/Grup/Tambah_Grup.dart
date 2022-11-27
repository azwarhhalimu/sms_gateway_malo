import 'package:akmalo_mobile/Http_api/Simpan_grup.dart';
import 'package:flutter/material.dart';

class Tambah_grup extends StatefulWidget {
  String routeName = "/tambah_grup";

  @override
  State<Tambah_grup> createState() => _Tambah_grupState();
}

class _Tambah_grupState extends State<Tambah_grup> {
  TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initStat

    this._controller = TextEditingController();
    _controller.addListener(() {});
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
                "Tambah Grup",
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
                              _simpan_grup();
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

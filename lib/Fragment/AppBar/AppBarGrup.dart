import 'package:akmalo_mobile/Fragment/Page/Grup/Tambah_Grup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarGrup extends StatelessWidget {
  const AppBarGrup({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context)
                  .push(
                MaterialPageRoute(
                  builder: ((context) => Tambah_grup()),
                ),
              )
                  .then((value) {
                print(value);
              });
            },
            icon: Icon(CupertinoIcons.add),
            label: Text("Tambah"))
      ],
      title: Row(
        children: [
          Text(
            "Data Kontak Grup ",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}

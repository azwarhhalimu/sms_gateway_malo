import 'package:akmalo_mobile/Fragment/Page/Grup/Edit_grup.dart';
import 'package:akmalo_mobile/Http_api/Hapus_grup.dart';
import 'package:flutter/material.dart';

class List_item_grup extends StatelessWidget {
  String list;
  String id;
  String nomor;
  List_item_grup(this.nomor, this.list, this.id);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Opacity(
        opacity: .9,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    width: 30,
                    child: Text(nomor + ". "),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          list,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(id)
                      ],
                    ),
                  ),
                  PopupMenuButton(
                    onSelected: (value) {
                      if (value == "hapus") {
                        hapus_grup(id).then((value) {});
                      }
                      if (value == "edit") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Edit_grup(id, list);
                        }));
                      }
                      // your logic
                    },
                    itemBuilder: (BuildContext bc) {
                      return const [
                        PopupMenuItem(
                          child: Text("Edit"),
                          value: 'edit',
                        ),
                        PopupMenuItem(
                          child: Text("Hapus"),
                          value: 'hapus',
                        ),
                      ];
                    },
                  )
                ],
              ),
            ),
            Container(
              height: 3,
              color: Color.fromARGB(255, 233, 233, 233),
            )
          ],
        ),
      ),
    );
  }
}

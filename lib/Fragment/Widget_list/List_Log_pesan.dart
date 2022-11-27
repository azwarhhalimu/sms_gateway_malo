import 'dart:ui';

import 'package:flutter/material.dart';

List_log_pesan(String inisial, String nama, String no_hp, String tanggal) {
  return InkWell(
    onTap: () => {},
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(3)),
                child: Center(
                  child: Text(
                    inisial,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: 20,
              ),
              Expanded(
                  child: Opacity(
                opacity: 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nama,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      no_hp,
                      style: TextStyle(fontSize: 12, color: Colors.black38),
                    ),
                  ],
                ),
              )),
              Container(
                width: 50,
                child: Wrap(children: [
                  Text(
                    tanggal,
                    style: TextStyle(fontSize: 10),
                  ),
                ]),
              )
            ],
          ),
        ),
        Container(
          height: 5,
          color: Color.fromARGB(136, 235, 235, 235),
        ),
      ],
    ),
  );
}

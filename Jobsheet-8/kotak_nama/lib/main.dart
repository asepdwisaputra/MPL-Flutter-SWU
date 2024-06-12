import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buatKotak(Colors.greenAccent, 100, ''),
                buatKotak(Colors.orangeAccent[400]!, 70, 'Ini Saya'),
                buatKotak(Colors.greenAccent, 50, 'Asep Dwi Saputra'),
                buatKotak(Colors.orangeAccent[400]!, 90, 'NIM STI202102126'),
                buatKotak(Colors.red[300]!, 110, ''),
              ],
            ),
          ),
        ),
      ),
    ),
  ));
}

Widget buatKotak(Color warna, double ukuran, String nama) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(color: warna),
        height: ukuran,
        width: ukuran,
        margin: const EdgeInsets.all(10),
      ),
      Text(nama),
    ],
  );
}

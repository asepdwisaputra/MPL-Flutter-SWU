import 'package:flutter/material.dart';

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({this.teks1 = '', required this.teks2});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teks1,
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 0, 0, 0)),
        ),
        Text(
          teks2,
          textDirection: TextDirection.ltr,
        ),
      ],
    );
  }
}

class TeksNamaku extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksNamaku({required this.teks1, required this.teks2});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Text(
            teks1,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
                fontSize: 45, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            teks2,
            textDirection: TextDirection.ltr,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tugas Jobsheet 5 Flutter'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              TeksUtama(
                teks1: 'NANDA ROSENATU FAHIRA',
                teks2: 'STI202102598',
              ),
              TeksUtama(
                teks1: 'SASI ALYAUMAH',
                teks2: 'STI202001994',
              ),
              TeksNamaku(
                teks1: 'ASEP DWI SAPUTRA',
                teks2: 'STI202102126',
              ),
              TeksUtama(
                teks1: 'PUTRI HAERUNNISA',
                teks2: 'STI202102139',
              ),
              TeksUtama(
                teks1: 'DWI YULY ARDANESWARI',
                teks2: 'STI202102143',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

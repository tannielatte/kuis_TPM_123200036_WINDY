import 'package:flutter/material.dart';
import 'package:kuiswindy36/disease_data.dart';
import 'package:kuiswindy36/halaman_utama.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KUIS PRAKTIKUM TPM WINDY',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const HalamanUtama(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:frases_do_dia/telas/frases_offline.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inoova Flutter - Frases do Dia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const FrasesOffline(title: 'Frases do Dia'),
    );
  }
}
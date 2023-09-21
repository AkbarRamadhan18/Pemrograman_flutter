import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Nama"),
        ),
        body: Center(
            child: Text("Azzammil Akbar Ramadhan \n D3-Teknik Komputer")),
      ),
    );
  }
}

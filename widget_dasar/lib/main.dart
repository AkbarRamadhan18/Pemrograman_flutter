import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Text("Hallo Ini Aplikasi Azzammil Akbar Ramadhan"),
        ),
        appBar: AppBar(
          title: Text("My Apps"),
        ),
      ),
    );
  }
}

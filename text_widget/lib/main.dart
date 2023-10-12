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
        // backgroundColor: Colors.greenAccent,
        body: Center(
          child: Text(
            "Hallo Ini Aplikasi Azzammil Akbar Ramadhan Hallo Ini Aplikasi Azzammil Akbar Ramadhan Hallo Ini Aplikasi Azzammil Akbar Ramadhan Hallo Ini Aplikasi Azzammil Akbar Ramadhan Hallo Ini Aplikasi Azzammil Akbar Ramadhan Hallo Ini Aplikasi Azzammil Akbar Ramadhan",
            // maxLines: 2,
            // overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              backgroundColor: Colors.lightBlue,
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 5,
              decorationStyle: TextDecorationStyle.wavy,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.black,
              decorationThickness: 2,
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("My Apps"),
        ),
      ),
    );
  }
}

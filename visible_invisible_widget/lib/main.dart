

import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text("Column"),
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     Container(
      //       width: 200,
      //       height: 50,
      //       color: Colors.blueGrey,
      //     ),
      //     Container(
      //       width: 50,
      //       height: 50,
      //       color: Colors.deepPurple,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 50,
      //       color: Colors.lightBlueAccent,
      //     ),
      //     Container(
      //       width: 300,
      //       height: 50,
      //       color: Colors.orangeAccent,
      //     ),
      //   ],
      // ),

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //       height: 200,
      //       width: 50,
      //       color: Colors.blueGrey,
      //     ),
      //     Container(
      //       height: 50,
      //       width: 50,
      //       color: Colors.deepPurple,
      //     ),
      //     Container(
      //       height: 100,
      //       width: 50,
      //       color: Colors.lightBlueAccent,
      //     ),
      //     Container(
      //       height: 300,
      //       width: 50,
      //       color: Colors.orangeAccent,
      //     ),
      //   ],
      // ),

      body: Stack(
        children: [
          Container(
            height: 400,
            width: 400,
            color: Colors.blueGrey,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.deepPurple,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.lightBlueAccent,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.orangeAccent,
          ),
        ],
      ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> myColor = [
    Colors.amberAccent, 
    Colors.black, 
    Colors.blueAccent, 
    Colors.green,
  ];

  final List<Widget> myList = List.generate(
    100, 
    (index) => Text(
     "${index + 1}", 
     style: TextStyle(
       fontSize: 20 + double.parse(index.toString()),
     ),
  ),
  );

  // List<Widget>myList = [
  //           Container(
  //             height: 300,
  //             width: 300,
  //             color: Colors.amberAccent,
  //           ),
  //           Container(
  //             height: 300,
  //             width: 300,
  //             color: Colors.black,
  //           ),
  //           Container(
  //             height: 300,
  //             width: 300,
  //             color: Colors.blueAccent,
  //           ),
  //           Container(
  //             height: 300,
  //             width: 300,
  //             color: Colors.green,
  //           ),
  //       ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        // body: ListView.builder(
          body: ListView(
            children: myList,
            // separatorBuilder: (context, index){
                  // return Container(
                  //   height: 50,
                  //   color: Colors.red,
                  //   );
            //   return Divider(
            //     color: Colors.red,
            //     );
            // },
            // itemCount: myColor.length,
            // itemBuilder: (context, index){
                  // return Container(
                  //   height: 300,
                  //   width: 300,
                  //   color: myColor[index],
                  // );
           ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController nomorBPController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController mtkController = TextEditingController();
  TextEditingController bIngController = TextEditingController();
  TextEditingController javaController = TextEditingController();

  void resetForm() {
    nomorBPController.clear();
    namaController.clear();
    mtkController.clear();
    bIngController.clear();
    javaController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Data"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nomorBPController,
              decoration: InputDecoration(labelText: 'Nomor BP'),
            ),
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: mtkController,
              decoration: InputDecoration(labelText: 'MTK'),
            ),
            TextField(
              controller: bIngController,
              decoration: InputDecoration(labelText: 'B. Ing'),
            ),
            TextField(
              controller: javaController,
              decoration: InputDecoration(labelText: 'Java'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Implement OK button functionality here
                  },
                  child: Text("OK"),
                ),
                ElevatedButton(
                  onPressed: resetForm,
                  child: Text("Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController nobpController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController mtkController = TextEditingController();
  TextEditingController bingController = TextEditingController();
  TextEditingController javaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: nobpController,
              decoration: InputDecoration(labelText: 'No BP'),
            ),
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: mtkController,
              decoration: InputDecoration(labelText: 'Matematika'),
            ),
            TextField(
              controller: bingController,
              decoration: InputDecoration(labelText: 'Bahasa Inggris'),
            ),
            TextField(
              controller: javaController,
              decoration: InputDecoration(labelText: 'Java'),
            ),
            SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    double mtk = double.parse(mtkController.text);
                    double bing = double.parse(bingController.text);
                    double java = double.parse(javaController.text);

                    double rataRata = (mtk + bing + java) / 3;

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(
                          nobp: nobpController.text,
                          nama: namaController.text,
                          mtk: mtk,
                          bing: bing,
                          java: java,
                          rataRata: rataRata,
                        ),
                      ),
                    );
                  },
                  child: Text('OK'),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  onPressed: () {
                    nobpController.clear();
                    namaController.clear();
                    mtkController.clear();
                    bingController.clear();
                    javaController.clear();
                  },
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  final String nobp;
  final String nama;
  final double mtk;
  final double bing;
  final double java;
  final double rataRata;

  ResultPage({
    required this.nobp,
    required this.nama,
    required this.mtk,
    required this.bing,
    required this.java,
    required this.rataRata,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('No BP: $nobp'),
            Text('Nama: $nama'),
            Text('Matematika: $mtk'),
            Text('Bahasa Inggris: $bing'),
            Text('Java: $java'),
            Text('Rata-rata Nilai: $rataRata'),
          ],
        ),
      ),
    );
  }
}

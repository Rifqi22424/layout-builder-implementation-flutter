import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutBuilder Example'),
      ),
      body: Center(
        // Menggunakan LayoutBuilder untuk membuat widget responsif
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              width: constraints.maxWidth * 0.8, // Menyesuaikan lebar berdasarkan batasan tata letak
              height: 150,
              color: Colors.green,
              child: Center(
                child: Text(
                  'Widget Responsif',
                  style: TextStyle(
                    fontSize: constraints.maxWidth * 0.08, // Menyesuaikan ukuran teks berdasarkan batasan tata letak
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

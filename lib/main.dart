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
        title: Text('MediaQuery Example'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Memeriksa lebar layar
          if (constraints.maxWidth < 600) {
            // Jika lebar layar kurang dari 600 piksel (misalnya, mode ponsel)
            return buildPhoneLayout(context);
          } else {
            // Jika lebar layar 600 piksel atau lebih (misalnya, mode tablet)
            return buildTabletLayout(context);
          }
        },
      ),
    );
  }

  Widget buildPhoneLayout(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Mode Ponsel'),
          // Tambahkan widget untuk tampilan ponsel di sini
        ],
      ),
    );
  }

  Widget buildTabletLayout(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Mode Tablet - Panel Kiri'),
                // Tambahkan widget untuk panel kiri di sini
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Mode Tablet - Panel Kanan'),
                // Tambahkan widget untuk panel kanan di sini
              ],
            ),
          ),
        ],
      ),
    );
  }
}

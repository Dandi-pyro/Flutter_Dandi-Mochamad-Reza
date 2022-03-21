import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Barcode'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Alterra Academy'),
            BarcodeWidget(
              barcode:  Barcode.qrCode(),
              data: "Alterra Academy",
              width: 400,
              height: 160,
            ),
            const SizedBox(height: 10),
            const Text('Flutter Asik'),
            BarcodeWidget(
              barcode:  Barcode.qrCode(),
              data: "Flutter Asik",
              width: 400,
              height: 160,
            ),
            const SizedBox(height: 10),
            const Text('Dandi Mochamad Reza'),
            BarcodeWidget(
              barcode:  Barcode.qrCode(),
              data: "Dandi Mochamad Reza",
              width: 400,
              height: 160,
            ),
          ],
        )
      )
    );
  }
}
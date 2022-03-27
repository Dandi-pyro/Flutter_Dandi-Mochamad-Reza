import 'package:digabung/galery/galery_BS.dart';
import 'package:flutter/material.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Galery')
      ),
      body: const GaleryBS()
    );
  }
}
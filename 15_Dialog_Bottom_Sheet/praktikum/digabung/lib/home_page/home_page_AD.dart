import 'package:digabung/galery/galery_AD.dart';
import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  const AlertDialogPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Galery')
      ),
      body: const GaleryAD()
    );
  }
}
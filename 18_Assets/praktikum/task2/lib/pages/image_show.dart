import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String imageShow;
  const ImagePage({ Key? key, required this.imageShow }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Image"),
      ),
      body: SafeArea(
        child: Image.asset(
          imageShow,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
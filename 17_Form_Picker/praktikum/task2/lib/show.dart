import 'dart:io';

import 'package:flutter/material.dart';

class ShowPage extends StatelessWidget {
  final String image;
  final String date;
  final Color colors;
  final String description;
  const ShowPage({
    Key? key,
    required this.image,
    required this.date,
    required this.colors,
    required this.description,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create Post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Image(
              image: FileImage(File(image)),
              fit: BoxFit.contain,
              height: 300,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Published $date'),
                Row(
                  children: [
                    const Text('Color '),
                    const SizedBox(width: 10),
                      Container(
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(colors.value)
                        ),
                        child: const Text('    '),
                      )
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Text(description),
          ],
        ),
      )
    );
  }
}

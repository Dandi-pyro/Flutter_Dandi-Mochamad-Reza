import 'package:flutter/material.dart';
import 'package:task2/models/models.dart';

import 'image_show.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _image = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Image Button?')
      ),
      body: Center(
        child: Material(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
            ),
            itemCount: gambar.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                splashColor: Colors.black26,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ImagePage(imageShow: gambar[index])
                    ));
                },
                child: Ink.image(
                  image: AssetImage(gambar[index]),
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        )
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List _listImage = [
    'asset/img/Android.jpg',
    'asset/img/Aurora.jpg',
    'asset/img/Chandler.jpg',
    'asset/img/Chris.jpg',
    'asset/img/Dream.jpg',
    'asset/img/Drista.jpg',
    'asset/img/Flutter.png',
    'asset/img/George.jpg',
    'asset/img/Ios.jpg',
    'asset/img/Karl.jpg',
    'asset/img/MrBeast.jpg',
    'asset/img/RTX_GeForce.jpg',
    'asset/img/Sleepy.jpg',
    'asset/img/Techno.jpg',
    'asset/img/Tommy.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Galery')
      ),
      body: Material(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 5,
          mainAxisSpacing: 20),
          itemCount: _listImage.length,
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
                splashColor: Colors.black26,
                onTap: () {},
                child: Ink.image(
                  image: AssetImage(_listImage[index]),
                  fit: BoxFit.cover,
                )
            );
          }
        )
      )
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage()
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List gambar = [
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
    'asset/img/Tommy.jpg',
  ];
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
                onTap: () {},
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
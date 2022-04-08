import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Animation Image'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            isBig = !isBig;
          });
        },
        child: Center(
          child: AnimatedContainer(
            height: isBig? 420:100,
            width: isBig? 420:100,
            duration: const Duration(milliseconds: 300),
            child: InkWell(
              splashColor: Colors.black26,
              child: Ink.image(
                image: const NetworkImage('https://images.pexels.com/photos/2093323/pexels-photo-2093323.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ),
      ),
    );
  }
}

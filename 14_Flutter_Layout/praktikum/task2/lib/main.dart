import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'GridView'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: [
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.add_comment, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.create, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.call, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.save, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.access_alarms, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.backup, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.cached, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.dashboard, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.egg, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.facebook, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.games, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.hardware, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.icecream, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.javascript, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.keyboard, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25)
            ),
            child: const Icon(Icons.laptop, color: Colors.white),
          ),
        ]
      )
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _time;

  void _timeUpdate(){
    Timer.periodic(Duration(seconds: 1), (timer){
      setState(() {
        _time = DateFormat.Hms().format(DateTime.now());
      });
    });
  }

  @override
  void initState() {
    _timeUpdate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Clock"),
        ),
        body: Center(
          child: Text(
            _time,
            style: const TextStyle(fontSize: 50)
          )
        )
      )
    );
  }
}
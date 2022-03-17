import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class clock extends StatefulWidget {
  const clock({ Key? key }) : super(key: key);

  @override
  State<clock> createState() => _clockState();
}

class _clockState extends State<clock> {
  var _time;

  void _timeUpdate(){
    Timer.periodic(const Duration(seconds: 1), (timer){
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
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Clock"),
        ),
        body: Center(
          child: Text(
            _time,
            style: const TextStyle(fontSize: 50)
          )
        )
      );
  }
}
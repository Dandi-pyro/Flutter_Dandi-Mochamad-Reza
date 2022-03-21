import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Badge'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Chip(
                  padding: EdgeInsets.all(0),
                  backgroundColor: Colors.deepPurple,
                  label: Text('BADGE', style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 10),
                Badge(
                  toAnimate: false,
                  shape: BadgeShape.square,
                  badgeColor: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20),
                  badgeContent: const Text('BADGE', style: TextStyle(color: Colors.white)),
                ),
              ]
            )
          )
        )
      )
    );
  }
}
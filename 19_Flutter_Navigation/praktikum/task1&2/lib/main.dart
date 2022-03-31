import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/models/kontak_models.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CreateContact(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task Section 19',
        home: MyHomePage(),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/pages/home_page.dart';
import 'package:task1/stores/contacts.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Contact(),
        )
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Provider',
      home: HomePage()
    );
  }
}
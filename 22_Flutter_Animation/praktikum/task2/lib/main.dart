import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task2/pages/home_page.dart';
import 'package:task2/models/contacts.dart' as contact_store;

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => contact_store.Contact(),
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
      title: 'Task Flutter Animation',
      debugShowCheckedModeBanner: false,
      home: MyHomePage()
    );
  }
}
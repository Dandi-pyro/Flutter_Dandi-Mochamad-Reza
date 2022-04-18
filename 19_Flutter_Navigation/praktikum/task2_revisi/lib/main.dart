import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task2_revisi/models/contacts.dart' as contact_store;
import 'package:task2_revisi/pages/create_contacts.dart';
import 'package:task2_revisi/pages/home_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => contact_store.Contact(),
        ),
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Flutter Animation',
      debugShowCheckedModeBanner: false,
      initialRoute:  '/',
      routes: {
        '/' : (_) => const MyHomePage(),
        '/create' : (_) => const CreatePage(),
      },
    );
  }
}
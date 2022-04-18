import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task2/bloc/blacklist_bloc.dart';
import 'package:task2/bloc/contact_bloc.dart';
import 'package:task2/pages/home_page.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ContactsBloc>(
          create: (context) => ContactsBloc(),
        ),
        BlocProvider<BlacklistBloc>(
          create: (context) => BlacklistBloc(),
        ),
      ],
      child: const MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
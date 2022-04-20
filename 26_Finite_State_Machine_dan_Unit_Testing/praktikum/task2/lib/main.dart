import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task2/screen/food/food_screen.dart';
import 'package:task2/screen/food/food_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FoodViewModel(),
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
      title: 'Food',
      debugShowCheckedModeBanner: false,
      home: FoodScreen()
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/screen/foods/foods_screen.dart';
import 'package:task1/screen/foods/foods_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FoodViewModel(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  FoodScreen(),
      ),
    ),
  );
}
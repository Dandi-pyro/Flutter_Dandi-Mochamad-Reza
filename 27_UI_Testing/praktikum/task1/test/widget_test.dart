import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task1/blacklist.dart';
import 'package:task1/home_screen.dart';

void main() {
  testWidgets('Test Home Screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: MyHomePage(title: 'Contact'),
    ));
    expect(find.text('Contact'), findsOneWidget);
    
    await tester.press(find.text('Submit'));
    await tester.pump();

    await tester.press(find.text('Reset'));
    await tester.pump();
  });

  testWidgets('Blacklist Screen Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: BlacklistScreen(),
    ));
    expect(find.text('Blacklist'), findsNothing);
  });
}
import 'package:flutter/material.dart';
import 'card_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Layout: Marsya Zulfa Zahrani',
      home: CardDemo(), 
    );
  }
}
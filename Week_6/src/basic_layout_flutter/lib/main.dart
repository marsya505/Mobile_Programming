import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _buildGrid() => GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _buildGridTileList(30),
      );

  List<Widget> _buildGridTileList(int count) => List.generate(
        count,
        (i) => Image.asset(
          'images/pict$i.jpeg',
          fit: BoxFit.cover,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout: Marsya Zulfa Zahrani',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView Demo'),
        ),
        backgroundColor: Colors.white,
        body: _buildGrid(),
      ),
    );
  }
}

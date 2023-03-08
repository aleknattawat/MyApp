import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tottenham hotspur'),
        ),
        body: const Center(
          child: Image(image: AssetImage('assets/spur.png'),),
        ),
      ),
    );
  }
}
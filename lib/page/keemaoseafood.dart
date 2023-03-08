import 'package:flutter/material.dart';

void main() => runApp( keemao());

class keemao extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',

      home: Scaffold(
        appBar: AppBar(
          title:  Text('keemao layout'),
        ),
        body:  Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
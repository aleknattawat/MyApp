import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp( dramain());

class dramain extends StatelessWidget {
   

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title:  Text('Material App Bar'),
        ),
        body:  Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
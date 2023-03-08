import 'package:firtsapp/page/logpj.dart';
import 'package:firtsapp/page/tap.dart';
import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body:tap1()
      ),
    );
  }
}
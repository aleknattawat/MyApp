import 'package:firtsapp/page/gu_gu.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //ลบแถบสีแดงขวามือออก
      home: Bgimage(),
    );
  }
}
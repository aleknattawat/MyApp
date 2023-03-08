import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title:  Text('Mr.Nattawat',
          style:TextStyle(color:Colors.amber[500],fontSize: 30),),
          centerTitle:true,
          backgroundColor: Colors.red[500],

        ),
        body:  Center(
          child: Text('Hello World,Hello Nattawat'),
          
        ),
      ),
    );
  }
}
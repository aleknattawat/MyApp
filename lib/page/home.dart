import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nattawat',
          style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          centerTitle: true,
          backgroundColor: Colors.yellow,
        ),
        body: Container(
          color: Colors.grey,
          alignment: Alignment.center,
          child: Text(
            'Hello World!!',
            style: TextStyle(color: Colors.red[500], fontSize: 30),
          ),
        ));
  }
}
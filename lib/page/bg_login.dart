import 'package:flutter/material.dart';

class Bgimage extends StatefulWidget {
  const Bgimage({super.key});

  @override
  State<Bgimage> createState() => _BgimageState();
}

class _BgimageState extends State<Bgimage> {
  @override
  Widget build(BuildContext context) =>Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        colorFilter: new ColorFilter.mode(Color.fromARGB(44, 45, 44, 45).withOpacity(0.5), BlendMode.dstATop),
        image: AssetImage('assets/everton.png'),
        fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: Text('Background Image'),
          centerTitle: true,
        ),
        body: Container(
          
        ),
      ),
    );
}
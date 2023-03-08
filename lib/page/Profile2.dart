import 'package:firtsapp/page/drawer1.dart';
import 'package:flutter/material.dart';

class Profile2 extends StatefulWidget {
  const Profile2({super.key});

  @override
  State<Profile2> createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Profile Nattawat'),
      ),
      drawer: drawer1(),
      body: Center(
        child: Text('Content profile Page'),
        ),
    );
      
  }
}
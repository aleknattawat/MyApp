import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firtsapp/page/Profile.dart';
import 'package:firtsapp/page/Viewdata.dart';
import 'package:firtsapp/page/calousel.dart';
import 'package:firtsapp/page/layout1.dart';
import 'package:firtsapp/page/travel.dart';
import 'package:flutter/material.dart';

class tap1 extends StatelessWidget {
  
@override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with vsync: this because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }

    final navigationKey = GlobalKey<CurvedNavigationBarState>();

    final screens = [
      Calousel(),
      Profile(),
      Layout(),
      travel(),
      viewdata(),
      
      
    ];


int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Color.fromARGB(255, 164, 212, 255),
          color: Color.fromARGB(255, 228, 141, 243),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 500),
          height: 50,
          index: index,
          onTap: (index) => setState(() => this.index = index),
          items: <Widget>[
            Icon(Icons.person_pin_rounded,size: 40,color: Colors.white,),
            Icon(Icons.person_pin_rounded,size: 40,color: Colors.white,),
            Icon(Icons.home,size: 40,color: Colors.white,),
            Icon(Icons.person_pin_rounded,size: 40,color: Colors.white,),
            Icon(Icons.settings,size: 40,color: Colors.white,),
          ]
        ),
        body:  screens[index]
    );
  }
}
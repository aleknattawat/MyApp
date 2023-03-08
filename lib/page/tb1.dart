import 'package:flutter/material.dart';

class tb1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://images.unsplash.com/photo-1551189671-d689632527c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
              fit: BoxFit.cover),
          ),

        child: Column(
          children: [
            Image.asset('assets/profile.jpg',
            fit: BoxFit.cover,
            height: 540,),
                Padding(padding: EdgeInsets.only(top: 25)),
                
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    ),
                  child: Column(
                    children: [
                      Text('Teerapat Junkong',
                        style: TextStyle(fontWeight: FontWeight.bold, 
                        fontSize: 40,
                        color: Color.fromARGB(255, 255, 255, 255)),),

                      Padding(padding: EdgeInsets.only(top: 5)),

                      Text('63012186',
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), 
                        fontWeight: FontWeight.bold, 
                        fontSize: 20),),
                    ],
                  ),
                ),
                  
                
          ],
        ),  
        ),
    );
}
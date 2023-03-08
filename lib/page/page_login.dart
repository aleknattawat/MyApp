import 'package:flutter/material.dart';

class Pagelogin extends StatefulWidget {
  const Pagelogin({super.key});

  @override
  State<Pagelogin> createState() => _PageloginState();
}

class _PageloginState extends State<Pagelogin> {
  @override
  Widget build(BuildContext context) => Container(
     decoration: BoxDecoration(
            image: DecorationImage(
               colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
               image: NetworkImage('https://img.lovepik.com/background/20211029/medium/lovepik-beautiful-small-fresh-spring-landscape-hd-background-image_605817163.jpg')
            ),
          ),
       child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Background Image'),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.lightBlue.shade600,
                  Colors.green.shade500
                ],
               ),
              ),
              child: ListView(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo-rbac.png",
                width: 200,
                height: 200,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: TextField(
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(
                        color: Colors.pink[600]
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: TextField(
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                     labelStyle: TextStyle(
                        color: Colors.pink[600]
                    ),
                  ),
                ),
              ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: (){},
                     child: Text('login'),
                     ),
                  ElevatedButton(
                    onPressed: (){},
                     child: Text('Register'),
                     ),
                ],
              ),
              Center(
                child: Text('2022 \u00a9 Suphatcha'),
              ),
            ],
          ),
          ),
        ),
      );
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://images.unsplash.com/photo-1610142200986-cfa82d656e9b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI3fHxiYWNrZ3JvdW5kJTIwJTIwJTIwbW9iaWxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
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
                        color: Colors.yellow[600]
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
                        color: Colors.yellow[600]
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
}

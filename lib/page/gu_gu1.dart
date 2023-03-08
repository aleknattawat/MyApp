import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstRoute extends StatefulWidget {
  const FirstRoute({super.key});

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop),
              image: AssetImage('assets/IMG_3498.JPG'),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Color.fromARGB(0, 255, 0, 0),
          appBar: AppBar(
            title: Text('Garena Online'),
            
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo-rbac.png',
                  height: 200,
                  width: 200,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: TextField(
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                  child: TextField(
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: (
                        
                      ) {},
                      child: Text('Login'),
                    ),
                    
                  ],
                ),
                Center(
                  child: Text('2022\u00a9 Nattawat Billasoy'),
                )
              ],
            ),
          ),
        ),
      );
}
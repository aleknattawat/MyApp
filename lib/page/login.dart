import 'package:flutter/material.dart';

class Bgimage extends StatefulWidget {
  const Bgimage({super.key});

  @override
  State<Bgimage> createState() => _BgimageState();
}

class _BgimageState extends State<Bgimage> {
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop),
              image: AssetImage('assets/Cake.png'),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Background Image'),
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
                      onPressed: () {},
                      child: Text('Login'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Register'),
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
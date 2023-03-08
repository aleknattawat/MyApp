import 'package:firtsapp/page/gu_gu1.dart';
import 'package:firtsapp/page/gu_gu2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
              image: AssetImage('assets/tgq.jpg'),
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
                // Padding(
                //   padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                //   child: TextField(
                //     style: Theme.of(context).textTheme.headline5,
                //     textAlign: TextAlign.center,
                //     decoration: InputDecoration(
                //       labelText: 'Username',
                //       labelStyle: TextStyle(
                //         color: Colors.black,
                //       ),
                //     ),
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                //   child: TextField(
                //     style: Theme.of(context).textTheme.headline5,
                //     textAlign: TextAlign.center,
                //     obscureText: true,
                //     decoration: InputDecoration(
                //       labelText: 'Password',
                //       labelStyle: TextStyle(
                //         color: Colors.black,
                //       ),
                //     ),
                //   ),
                // ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                        child: Text('L O G I N'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FirstRoute(),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: ElevatedButton(
                        child: Text('S I G N - U P'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Mkdd(),
                            ),
                          );
                        },
                      ),
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
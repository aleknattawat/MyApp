import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:firtsapp/page/travel.dart';


class grid extends StatelessWidget {
  final Content Contents;

  const grid({
    Key? key,
    required this.Contents,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            Contents.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage(Contents.image),
                fit: BoxFit.cover,
                opacity: .7),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 80)),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    width: 400,
                    height: 350,
                    child: Image(
                      image: AssetImage(Contents.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  //Image(image: NetworkImage(Contents.image)),
                  Padding(padding: EdgeInsets.only(bottom: 50)),
                  Container(
                    width: 400,
                    color: Colors.black.withOpacity(0.5),
                    child: Column(
                      children: [
                        Text(Contents.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Text(
                          Contents.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

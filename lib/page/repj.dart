import 'dart:convert';

import 'package:firtsapp/page/Viewdata.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();

  Future register() async {
    var url = Uri.http("172.18.121.245",'/final_pj/register.php',{'q':'{http}'}); 
    //var url = "http://10.0.5.217/myapi/register.php";
    var response = await http.post(url, body: {
      "username": user.text,
      "password": pass.text,
      "fname_nb": fname.text,
      "lanme_nb": lname.text,
      "phone":phone.text,
      "email":email.text,
    });
    var data = json.decode(response.body);
    if (data == "Error") {
     Fluttertoast.showToast(
        msg: "กรุณากรอกข้อมูลให้ครบถ้วน ไอเวร",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        fontSize: 16.0,
      );
    } else {
       Fluttertoast.showToast(
          msg: "ลงทะเบียนเรียบร้อย",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          fontSize: 16.0,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(
          '',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: 700,
        child: Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Register Account',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Color.fromARGB(211, 40, 39, 39)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  controller: user,
                ),
              ),
              //2
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  controller: pass,
                ),
              ),
              //3
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    // prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  controller: fname,
                ),
              ),
              //4
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    // prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  controller: lname,
                ),
              ),
              //5
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    prefixIcon: Icon(Icons.mobile_friendly),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  controller: phone,
                ),
              ),
              //5
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    //prefixIcon: Icon(Icons.mobile_friendly),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  controller: email,
                ),
              ),

              Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      color: Colors.pink,
                      
                      child: Text('Register',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      onPressed: () {
                        register();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>viewdata()));
                      },
                    ),
                  ),
                  // Expanded(
                  //   child: MaterialButton(
                  //     color: Colors.amber[100],
                  //     child: Text('Login',
                  //         style: TextStyle(
                  //             fontSize: 20,
                  //             fontWeight: FontWeight.bold,
                  //             color: Colors.black)),
                  //     onPressed: () {
                  //       Navigator.push(context,MaterialPageRoute(
                  //           builder: (context) => viewdata(),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
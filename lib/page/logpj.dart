import 'dart:convert';
import 'package:firtsapp/page/repj.dart';
import 'package:firtsapp/page/tap.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formfield = GlobalKey<FormState>();
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  bool passToggle = true;

  login() async {
    var url = Uri.http("172.18.121.245",'/myapi/login.php',{'q':'{http}'});
    var response = await http.post(url, body: {
      'username': user.text,
      'password': pass.text,
    });
    var data = jsonDecode(response.body);
    //if (data != []) print(data);
    if (data != [] || data != null) {
      Fluttertoast.showToast(
        msg: "ยินดีต้อนรับเข้าสู่ระบบ",
        backgroundColor: Colors.blue,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        fontSize: 24.0,
      );
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                tap1(),
        ),
      );
    } else {
      Fluttertoast.showToast(
        msg: "ผู้ใช้งานหรือรหัสผ่าน ไม่ถูกต้อง!!",
        backgroundColor: Colors.blue,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        fontSize: 24.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nattawat.App"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        key: _formfield,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/Avatar.webp",
                width: 80,
                height: 100,
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: user,
                decoration: InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person)),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                obscureText: passToggle,
                controller: pass,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock)),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo,),
                      child: Text('Login',
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      onPressed: () {
                        login();
                      },
                    ),
                  ),

                  // Expanded(
                  //   child: MaterialButton(
                  //     color: Colors.indigo,
                  //     child: Text('สมัครสมาชิก',
                  //         style: TextStyle(
                  //             fontSize: 20,
                  //             fontWeight: FontWeight.bold,
                  //             color: Colors.white)),
                  //     onPressed: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) => FormRegister(),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Register(),
                        ),
                      );
                    }),
                    child: Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
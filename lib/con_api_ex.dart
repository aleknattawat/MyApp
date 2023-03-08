import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  MyApp();

   List _data = [];
  // var _name;
  // var _image;
  // var _species;

void getData() async {
    var url = Uri.parse('https://my-rbac-api.tavatruamsub1.repl.co/zoo');
    var response = await http.get(url);
    
    if (response.statusCode == 200) {
      // print(response.statusCode);
      var jsonResponse = convert.jsonDecode(response.body);
      _data = jsonResponse;
      // _name = jsonResponse[0]['name'];
      // _image = jsonResponse[0]['image'];
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text('Name : ${_data[0]['name'] ?? ''}'),
                    Image.network(
                      '${_data[0]['image']}',
                      width: 150,
                      height: 150,
                    ),
                    Text('Species : ${_data[0]['species']}'),
                  ],

                ),
                ),
                
            ],
          ),
        ),
      ),
    );
  }
}
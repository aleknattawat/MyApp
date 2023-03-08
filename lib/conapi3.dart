import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


void main() => runApp( MyApp());

class MyApp extends StatelessWidget {

  List _data =[];
  var _Image,_name,_species;

  void getData() async{
    var url = Uri.parse('https://Niele.alekntw.repl.co/zoo');
    var response = await http.get(url);
    //print(response);
    
    if(response.statusCode==200){
      //  print(response.statusCode);
      var jsonResponse = convert.jsonDecode(response.body);
      _data = jsonResponse;
      _name = jsonResponse[0]['name'];
      _Image = jsonResponse[0]['Image'];
      _species = jsonResponse[0]['species'];
    }else{
      print('Failed!!');
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top:20),
                child: Column(
                  children: [
                    Text('name : ${_data[0]['name']}',style: TextStyle (color:Colors.white,fontSize: 20  ),),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,),
                        ),
                        child: Image(image: NetworkImage('${_data[0]['Image']}'),
                        fit: BoxFit.cover,
                        width: 200,
                        height: 200,),
                      ),
                    ),
                    Text('Species : ${_data[0]['species']}',style: TextStyle (color:Colors.white,fontSize: 16),),

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


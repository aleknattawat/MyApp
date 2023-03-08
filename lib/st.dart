import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 Future getData()async{
    var url = Uri.parse('http://172.18.114.55/myapi/viewContact.php');
    var response = await http.get(url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PhP Mysql ViewData'),
      ),

      body: FutureBuilder(
        future: getData(),
        builder: (context,snapshot){
          if(snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context,index){
                List list = snapshot.data;
                return ListTile(
                leading: Icon(Icons.favorite,
                color: Colors.pink,
                size: 30,),
                  title: Text(list[index]['firstname'],
                  textScaleFactor: 1,
                  ),
                  subtitle: Text(list[index]['lastname']),
                 trailing: Text(list[index]['phone']),
                );
              }
          ) : Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
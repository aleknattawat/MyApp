import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class viewdata extends StatelessWidget {
  
  Future getData()async{
    var url = Uri.parse('http://172.18.121.245/final_pj/viewContact.php');
    var response = await http.get(url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 153, 157, 153),
        appBar: AppBar(
          title:  Text('View Data'),
          backgroundColor: Color.fromARGB(22, 22, 22, 22),
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
                leading: Icon(Icons.star,
                color: Colors.yellow,
                size: 30,),
                  title: Text(list[index]['fn_nb'],
                  textScaleFactor: 1,
                  ),
                  subtitle: Text(list[index]['ln_nb']),
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
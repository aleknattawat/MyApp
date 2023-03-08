import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp();

//สร้าง function
  void getData() async {
    //สร้างตัวแปร url เพื่อใส่ url จากเว็บ api ลงไป
    final url = Uri.parse('https://Niele.alekntw.repl.co/zoo');
    //ดึงข้อมูลโดยใช้ method get แล้วเอาตัวแปร url ใส่ลงไป
    http.Response response = await http.get(
        url); //get จะ return ค่าเป็น future เลยต้องใส่ async และ await เพื่อรอการประมวลผล
    //http.Response ตามด้วยตัวแปร response เพื่ออ้างอิง as http

    //ทดสอบว่าส่ง instance ส่งกลับมาจาก server หรือเปล่า จะแสดงค่าที่ terminal ว่า Instance of 'Respone'
    //print(response);

    //ต่อไปตรวจเช็คว่าพร้อมใช้งานหรือเปล่าโดยเช็ค statusCode ต้องเท่ากับ 200 แสดงว่าพร้อมใช้งาน ถ้าได้ค่าอื่นแสดงว่าผิดพลาด
    print(response.statusCode);
    print(response.body);

    //การเข้าถึงข้อมูลเราต้องใช้ .body ดังตัวอย่างต่อไปนี้
    //ตรวจเช็คก่อนว่า response.statusCode=200 หรือไม่
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print('Failed');
    }
    //เมื่อ reload จะแสดงข้อมูลจาก api มาแสดงใน terminal
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
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
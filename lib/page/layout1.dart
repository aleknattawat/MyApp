import 'package:firtsapp/page/drawer1.dart';
import 'package:flutter/material.dart';

void main() => runApp( Layout());

class Layout extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    Widget titlesection = Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Alek Nattawat Billasoy',
                   style: TextStyle(fontWeight: FontWeight.bold,
                   )
                  ),
                ),
                Text(
                  'Bangkok,Thailand',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
                ),
              ],
              )  
          ),
          
          Text('7,000,000'),
          Icon(
            Icons.favorite,
            color: Colors.red[500],
          ),
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColum(color,Icons.call,'091-5321729'),
          _buildButtonColum(color,Icons.camera_alt,'IG:alek1123.69'),
          _buildButtonColum(color,Icons.mail_outline,'lek5550123@gmail.com'),
        ],
      ),
    );

    //TextSection
    Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'ประวัติส่วนตัว \n ว่าที่ ร.ต. ณัฐวัฒน์ บิลลโสย อายุ22ปี เกิด วันจันทร์ที่ 8 มกราคม พ.ศ.2544 กำลังศึกษาอยู่ ชั้นปีที่3 คณะวิศกรรมศาสตร์ สาขาวิศวกรรมคอมพิวเตอร์ \n\n',
    softWrap: true,
  ),
);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        drawer: drawer1(),
        backgroundColor:Color.fromARGB(65, 174, 100, 100),
        appBar: AppBar(
          title:  Text(''),
          backgroundColor: Color.fromARGB(255, 255, 0, 13),
        ),
        body:ListView(
        children: [
          Image.asset('assets/alek.jpg' ,
          
          width: 600,
          height: 720,
          fit: BoxFit.cover,
          
          ),
          titlesection,
          buttonSection,
          textSection,
        ],
        ),
      ),
    );
  }

  // CircleAvatar(
  //     backgroundImage: AssetImage('assets/profile.jpg'),
  //     radius: 100,
  //   )

  //   height:150,
  //   aligment: Alignment.center,
  //   child: Stack(alignment: Alignment(0.05,0.6),
    
  //   Container(
  //     decoration: BoxDecoration(
  //       color: Colors.black45,
  //     ),
  //   child: Text(
  //     'nattawat',
  //     style: TextStyle(
  //       fontSize: 20,
  //       fontWeight: FontWeight.bold,
  //       color: Colors.red[900],
  //     ),
  //   ),
  //   ),


//_buildButtonColumn
Column _buildButtonColum(Color color, IconData icon,String label){
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center ,
    children: [
      Icon(
        icon, color: color,
      ),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      )
  ],
  );
}

}
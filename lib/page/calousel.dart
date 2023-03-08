import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Calousel extends StatelessWidget {

final urlImages = [
      'assets/kainoui.jpg',
      'assets/kopa.jpg',
      'assets/panhye.jpg',
      'assets/tapu.jpg',
      'assets/smad.jpg',
      
    ];
final names = [
  'เขาไข่นุ้ย',
  'เกาะผ้า',
  'เกาะปันหยี',
  'เกาะตะปู',
  'เสม็ดนางชี',
  
];

    Widget buildImage(String urlImage, int index, String names) => Container(
      height: 600,
      child: Stack(alignment: Alignment(0.05,0.5),
      children: [
        Image.asset(urlImage,fit: BoxFit.cover,),
        Container(
                  margin: EdgeInsets.only(top: 450),
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    ),
                  child: Text(names,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255, 255, 255),),
                ),
        )
      ],
      ),   
    );
    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Highlight',style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body:Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/ssar.jpg'),
              fit: BoxFit.cover),
          ),

          child: CarouselSlider.builder(

              itemCount: urlImages.length, 
              itemBuilder: ((context, index, realIndex) {
                final urlImage =urlImages[index];
                final name = names[index];
                return buildImage(urlImage, index, name);
              }), 
              options: CarouselOptions(
                autoPlay: true,
                height: 500,
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                )
              ),
        ),
        
      ),
    );
  }
}
class User{
    final String username;

    const User({
      required this.username,
    });
  }
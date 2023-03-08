import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class tb3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('Calousel',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://images.unsplash.com/photo-1551189671-d689632527c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
              fit: BoxFit.cover),
          ),

          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 70),
                  child: CarouselSlider.builder(
              itemCount: urlImages.length, 
              itemBuilder: ((context, index, realIndex) {
                final urlImage =urlImages[index];
                return buildImage(urlImage, index);
              }), 
              options: CarouselOptions(
                height: 500,
                enlargeCenterPage: true,
                viewportFraction: 0.85,
                )
              ),
                ),
              ],
            ),
          ),
        ),
    );

    final urlImages = [
      'assets/profile.jpg',
      'assets/profile1.jpg'
    ];

    Widget buildImage(String urlImage, int index) => Container(
      color: Colors.grey,
      width: 600,
      child: Image.asset(urlImage,
        fit: BoxFit.cover,
      ),
    );

}
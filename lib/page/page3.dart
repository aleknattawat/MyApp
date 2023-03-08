// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:firstapp/project/page3_grid.dart';
// import 'package:firstapp/project/drawer_menu.dart';
// import 'package:favorite_button/favorite_button.dart';

// class page3 extends StatelessWidget {
//   var user;
//   var email;
//   page3({required this.user, this.email});

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blueAccent.withOpacity(.7),
//         ),
//         drawer: DrawerMenu(user: user, email: email),
//         body: Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: NetworkImage(
//                     'https://i.pinimg.com/564x/15/b6/ab/15b6ab9df7eacbd7cca8b7c5218944f3.jpg'),
//                 fit: BoxFit.cover,
//             ),
//           ),
//           child: BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),

//             child: travel()),
//         ),

//       );
// }

// class travel extends StatelessWidget {
//   List<Content> Contents = [
//     const Content(
//         name: 'วัดช้างรอบ',
//         title: 'วัดช้างรอบ เป็นวัดใหญ่ที่สวยงาม ตั้งอยู่บนเนินสูงสุดของศิลาแลง ภายในวัดมีพระเจดีย์ทรงระฆังขนาดใหญ่ ซึ่งมีฐานเจดีย์กว้างถึง 31 เมตร และรอบเจดีย์มีประติมากรรมรูปช้างปูนปั้นจำนวน 68 เชือกด้วยกัน',
//         image: 'https://s359.thaibuffer.com/pagebuilder/9084f98f-ab09-4197-9bc0-467802dbeaf0.jpg'),
//     const Content(
//         name: 'วัดพระสี่อิริยาบถ',
//         title: 'วัดพระสี่อิริยาบถ หรือที่เรียกกันว่า วัดพระยืน เป็นวัดขนาดใหญ่และมีโบราณสถานที่เป็นเอกลักษณ์ คือ มณฑปพระสี่อิริยาบถ แต่ละทิศประดิษฐานพระพุทธรูป 4 ปาง ได้แก่ ยืน เดิน นั่ง และนอน ตามลำดับ ไฮไลต์ที่สำคัญของที่นี่ คือ พระยืนขนาดใหญ่ ตั้งเด่นเป็นสง่าสวยงาม มองเห็นในระยะไกล',
//         image: 'https://s359.thaibuffer.com/pagebuilder/863c1fc0-cba7-4cf0-bbef-790409c0bded.jpg'),
//     const Content(
//         name: 'อุทยานแห่งชาติแม่วงก์',
//         title: 'อุทยานแห่งชาติแม่วงก์เป็นผืนป่าอันอุดมสมบูรณ์ รายล้อมไปด้วยธรรมชาติที่สวยงาม นักท่องเที่ยวนิยมมาส่องสัตว์ ตั้งแคมปิ้ง เที่ยวน้ำตก และเดินป่าศึกษาเส้นทางธรรมชาติ สถานที่ท่องเที่ยวที่น่าสนใจ',
//         image: 'https://s359.thaibuffer.com/pagebuilder/74fb3730-3b91-4125-9f7d-d89d597bd778.jpg'),
//     const Content(
//         name: 'ยอดเขาโมโกจู',
//         title: 'ยอดเขาโมโกจู ยอดเขาที่สูงที่สุดในอุทยานแห่งชาติแม่วงก์ ด้วยความสูงที่ 1,964 เมตร จากระดับน้ำทะเล เป็นยอดเขาที่นักท่องเที่ยวที่ชื่นชอบการผจญภัยนิยมไปเดินป่าและปีนเขา โดยเส้นทางพิชิตยอดดอยโมโกจูจะเปิดให้นักท่องเที่ยวได้ไปสัมผัสในช่วงเดือนพฤศจิกายน-กุมภาพันธ์ ของทุกปี',
//         image: 'https://s359.thaibuffer.com/pagebuilder/77170b94-934f-4954-a4d6-7b0adcc155bf.jpg'),
//     const Content(
//         name: 'น้ำตกคลองลาน',
//         title: 'น้ำตกคลองลาน เป็นหนึ่งในน้ำตกใหญ่ของเมืองไทย มีความสูงราว 100 เมตร กว้างประมาณ 40 เมตร บริเวณใต้น้ำตกคลองเป็นแอ่งน้ำขนาดใหญ่ ในยามปกติสามารถลงเล่นน้ำได้',
//         image: 'https://s359.thaibuffer.com/pagebuilder/3f65874d-7923-4612-92f1-3008ee623727.jpg'),
//     const Content(
//         name: 'น้ำตกคลองวังเจ้า',
//         title: 'น้ำตกคลองวังเจ้าอีกหนึ่งน้ำตกสวยๆ ประจำอุทยานฯ สายน้ำที่ไหลจากภูเขากลางป่า สามารถนอนชิลๆ ริมน้ำ กางเต็นท์ใกล้ชิดธรรมชาติได้แบบสบายๆ โดยจะตั้งอยู่ริมเส้นทางของบ้านโละโคะ ห่างจากที่ทำการอุทยานฯ 3 กิโลเมตรเท่านั้น',
//         image: 'https://s359.thaibuffer.com/pagebuilder/943089d2-2cf6-4ade-9f02-ee1356a0fec8.jpg'),
//     const Content(
//         name: 'แก่งตาลิ-โป่งน้ำร้อน',
//         title: 'แก่งตาลิ-โป่งน้ำร้อน มีธารน้ำและเกาะแก่งที่สวยงาม ทั้งยังมีการตั้งแคร่ไม้และร่มบริเวณธารน้ำตก สามารถลงไปนั่งกินอาหารริมลำธาร พร้อมสัมผัสกับบรรยากาศสุดชิล เพราะอยู่ท่ามกลางธรรมชาติ แถมยังโอบล้อมด้วยภูเขาและสวนผลไม้อย่างสวนทุเรียนอีกด้วย',
//         image: 'https://s359.thaibuffer.com/pagebuilder/0f2deaa7-c6f8-4ed5-9615-3e3d05127f39.jpg'),
//     const Content(
//         name: 'ริมแม่น้ำปิง',
//         title: 'สวนสาธารณะริมแม่น้ำปิง นั่งชมบรรยากาศสุดชิล ลมพัดเย็นสบาย ทั้งยังเป็นสถานที่วิ่งออกกำลังกายในยามเย็น และทุกวันเสาร์ที่ 2 และที่ 4 ของเดือน จะมีถนนคนเดิน ตั้งแต่แยกศาลเจ้าพ่อเสือ ถึงสามแยกไฟแดงด้านหลังโรงพยาบาลกำแพงเพชร',
//         image: 'https://s359.thaibuffer.com/pagebuilder/a104316a-cf83-49cd-938e-003d09416cf0.jpg'),
//     const Content(
//         name: 'ศาลเจ้าพ่อเสือ',
//         title: 'ศาลปึงเถ่ากง-ม่า (ศาลเจ้าพ่อเสือ) ตั้งอยู่ในอำเภอเมือง เป็นศาลเจ้าจีน มีสถาปัตยกรรมและศิลปะจีน นับเป็นสถานที่ศักดิ์สิทธิ์ที่สำคัญแห่งหนึ่ง และเป็นที่เคารพนับถือของชาวกำแพงเพชรมาอย่างยาวนาน',
//         image: 'https://s359.thaibuffer.com/pagebuilder/bcc80824-cc32-4c25-96fe-c6da725996f0.jpg'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//       ),
//       child: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             height: 50,
//             decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 102, 142, 210).withOpacity(.8),
//                 ),
//             child: Text(
//               'สถานที่ท่องเที่ยว',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           Expanded(
//             child: GridView.builder(
//               shrinkWrap: true,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 1,
//                 // mainAxisSpacing: 1,
//                 // crossAxisSpacing: 1,
//               ),
//               itemCount: Contents.length,
//               itemBuilder: (context, index) {
//                 final Content = Contents[index];
//                 return Card(
//                   margin: EdgeInsets.fromLTRB(10, 0, 10, 75),
//                   color: Color.fromARGB(255, 169, 192, 234),
//                   child: Column(
//                     children: [
//                       Stack(
//                         alignment: Alignment(0.05, 0.5),
//                         children: [
//                           InkWell(
//                             onTap: () {
//                               Navigator.of(context).push(MaterialPageRoute(
//                                 builder: (context) => grid(Contents: Content),
//                               ));
//                             },
//                             child: Container(
//                               height: 270,
//                               decoration: BoxDecoration(
//                                   border: Border.all(
//                                     color: Colors.white,
//                                     width: 2,
//                                   ),
//                                   image: DecorationImage(
//                                     image: NetworkImage(Content.image),
//                                     fit: BoxFit.cover,
//                                   ),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10))),
//                             ),
//                           ),
//                           Container(
//                             width: double.infinity,
//                             margin: EdgeInsets.only(top: 170),
//                             padding: EdgeInsets.only(left: 20),
//                             color: Colors.black.withOpacity(.8),
//                             child: Text(
//                               Content.name,
//                               style: TextStyle(
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold,
//                                 color: Color.fromARGB(255, 255, 255, 255),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Expanded(
//                         child: Container(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Expanded(
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     color: Color.fromARGB(255, 91, 137, 224).withOpacity(.5),
//                                     borderRadius: BorderRadius.circular(7),
//                                   ),
//                                   child: FavoriteButton(
//                                     iconDisabledColor: Colors.white,
//                                     valueChanged: () {},
//                                   ),
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                     color: Color.fromARGB(255, 91, 137, 224).withOpacity(.5),
//                                     borderRadius: BorderRadius.circular(7),
//                                   ),
//                                   child: StarButton(
//                                     iconDisabledColor: Colors.white,
//                                     valueChanged: () {},
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Content {
//   final String name;
//   final String title;
//   final String image;

//   const Content({
//     required this.name,
//     required this.title,
//     required this.image,
//   });
// }

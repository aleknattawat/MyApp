import 'package:firtsapp/page/grid.dart';
import 'package:flutter/material.dart';



class travel extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Color.fromARGB(50, 22, 22, 22),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(50, 22, 22, 22),
          title:  Text('Travel Phang-nga'),
        ),
        body: travel1(
        ),
      ),
      color: Color.fromARGB(100, 100, 100, 100),
    );
  }
}

class travel1 extends StatelessWidget {
  List<Content> Contents = [
    const Content(
        name: 'เขาไข่นุ้ย',
        title: 'เขาไข่นุ้ย บ้านฝ่ายท่า ต.ทุ่งมะพร้าว อ.ท้ายเหมือง จ.พังงา เป็นจุดชมวิวที่สามารถชมวิวได้ทั้งฝั่งทะเลอันดามัน และ ทะเลหมอกในตอนเช้า และ สามารถขึ้นไปชมได้ทั้งปีไม่ว่าจะเป็นหน้าหนาว หน้าร้อน หรือ หน้าฝนก็ตาม',
        image: 'assets/kainoui.jpg'),
    const Content(
        name: 'เกาะผ้า',
        title: 'เกาะผ้า” คล้ายทะเลแหวก คือจะโผล่พ้นน้ำขึ้นมาเป็นสันดอนทรายเฉพาะเวลาที่น้ำทะเลลดลงเท่านั้น ยิ่งน้ำลดมากเท่าไรก็จะมีเนื้อที่เกาะมาก',
        image: 'assets/kopa.jpg'),
    const Content(
        name: 'เกาะปันหยี',
        title: 'เกาะปันหยี เป็นเกาะเล็ก ๆ มีที่ราบประมาณ 1ไร่ มีบ้านเรือน 200 หลังคาเรือน ประชาชนส่วนใหญ่นับถือศาสนาอิสลามที่ยึดถือธรรมเนียมประเพณีแบบดั้งเดิม',
        image: 'assets/panhye.jpg'),
    const Content(
        name: 'เสม็ดนางชี',
        title: 'ถือเป็นอีกหนึ่งจุดชมวิวชมพระอาทิตย์ขึ้นที่สวยที่สุดแห่งหนึ่งของไทย เพราะเราสามารถเห็นวิวทิวทัศน์ของเกาะต่างๆ ภูเขาหินปูนของอ่าวพังงา โดยเฉพาะในช่วงเช้าที่แสงของพระอาทิตย์ส่องเป็นประกายแสงออกมาน่าตื่นตาตื่นใจสุดๆ',
        image: 'assets/smad.jpg'),
    const Content(
        name: 'เกาะตะปู',
        title: 'เกาะตะปู เป็นเกาะโขดหินขนาดเล็ก ตั้งอยู่ทางด้านเหนือในเวิ้งอ่าวของเกาะเขาพิงกัน ทางทิศตะวันตกเฉียงใต้ของอุทยานแห่งชาติอ่าวพังงา',
        image: 'assets/tapu.jpg'),
    const Content(
        name: 'หมู่เกาะ สิมิลัน',
        title: 'หมู่เกาะสิมิลัน ดินแดนมหัศจรรย์ แห่งทะเลอันดามัน ประกอบไปด้วยเกาะใหญ่น้อย 9 เกาะด้วยกัน เกาะทั้งเก้าเรียงตัวตามแนวทิศเหนือไปทิศใต้',
        image: 'assets/simirun.jpg'),
    const Content(
        name: 'หาดนางทอง',
        title: 'หาดทรายสีดำบริเวณย่านเขาหลักของอำเภอตะกั่วป่า จังหวัดพังงา ที่มีชื่อว่า หาดนางทอง เป็นชายหาดที่ถูกยกให้เป็นอันซีนพังงา',
        image: 'assets/hadnangthong.jpg'),
    const Content(
        name: 'Little Amazon ตะกั่วป่า',
        title: ' Little Amazon ตะกั่วป่า มนต์เสน่ห์แห่งลำคลอง และความอุดมสมบูรณ์ของธรรมชาติ',
        image: 'assets/littleamezon.jpg'),
    const Content(
        name: 'หาดบางสัก',
        title: 'หาดสวยๆ เงียบสงบ ของ พังงา ที่เป็นเหมือนแหล่งพักผ่อนทั้งชาวบ้านในพื้นที่และนักท่องเที่ยว',
        image: 'assets/bangsuk.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 23, 162, 248).withOpacity(.8),
                ),
            child: Text(
              'WELCOME PHANG-NGA',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                 //mainAxisSpacing: 1,
                 //crossAxisSpacing: 1,
              ),
              itemCount: Contents.length,
              itemBuilder: (context, index) {
                final Content = Contents[index];
                return Card(
                  // margin: EdgeInsets.fromLTRB(10, 0, 10, 75),
                  color: Color.fromARGB(255, 23, 162, 248),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment(0.05, 0.5),
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => grid(Contents: Content),
                              ));
                            },
                            child: Container(
                              height: 184,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(Content.image),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                             margin: EdgeInsets.only(top: 111),
                            // padding: EdgeInsets.only(left: 20),
                            color: Colors.black.withOpacity(.8),
                            child: Text(
                              textAlign:TextAlign.center,
                              Content.name,
                              style: TextStyle(
                                
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Content {
  final String name;
  final String title;
  final String image;

  const Content({
    required this.name,
    required this.title,
    required this.image,
  });
}

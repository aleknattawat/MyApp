import 'package:flutter/material.dart';

class tb2 extends StatelessWidget {

  List<User> users = [
    const User(
      username: 'Vanida Hanchana', 
      urlAvatar: 'assets/smile.jpg'
      ),
    const User(
      username: 'Teerapat Junkong', 
      urlAvatar: 'assets/profile2.jpg'
      ),
      const User(
      username: 'Metas Kadeewee', 
      urlAvatar: 'assets/best.jpg'
      ),
      const User(
      username: 'Aekkarat Phongmahachai', 
      urlAvatar: 'assets/tong.jpg'
      ),
      const User(
      username: 'Minlada Srirattanawach', 
      urlAvatar: 'assets/lin.jpg'
      ),
    const User(
      username: 'Onnicha Wirathat', 
      urlAvatar: 'assets/aom.jpg'
      ),
      const User(
      username: 'Sasiwimol Supsatein', 
      urlAvatar: 'assets/nice.jpg'
      ),
      const User(
      username: 'Bovornsak Srithanok', 
      urlAvatar: 'assets/koe.jpg'
      ),
      const User(
      username: 'Jirawan Khongpan', 
      urlAvatar: 'assets/beam.jpg'
      ),
      const User(
      username: 'Wandee Maschai', 
      urlAvatar: 'assets/mariam.jpg'
      ),
    const User(
      username: 'Thaleangyos Thongdee', 
      urlAvatar: 'assets/sugus.jpg'
      ),
      
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://images.unsplash.com/photo-1551189671-d689632527c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                fit: BoxFit.cover),
          ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              ),
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                color: Colors.black.withOpacity(0.4),
                child: Stack(alignment: Alignment(0.05,0.5),
                children: [
                InkWell(
                  child: Image.asset(user.urlAvatar),
                ),
                Container(
                  margin: EdgeInsets.only(top: 150),
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    ),
                  child: Text(user.username,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255, 255, 255),),
                ),
            ),
      ],),
                );
              },
          ),
        ),
    );
}
class User{
    final String username;
    final String urlAvatar;

    const User({
      required this.username,
      required this.urlAvatar,
    });
  }
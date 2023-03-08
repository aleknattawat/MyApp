import 'package:firtsapp/page/Profile.dart';
import 'package:firtsapp/page/layout1.dart';
import 'package:firtsapp/page/logpj.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:fluttertoast/fluttertoast.dart';


class drawer1 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  Drawer(
          child:ListView(
            
            padding: EdgeInsets.zero,
            children: <Widget>[






              UserAccountsDrawerHeader(
                accountName: Text('Nattawat'), 
                accountEmail: Text('lek5550123@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/everton.png'),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/dara.jpg'),
                    fit: BoxFit.cover
                  ),
                ),
                ),
              ListTile(
                  leading:Icon(Icons.account_circle),
                  title:Text('Home'),
                  onTap: ((){
                    Navigator.push(context, MaterialPageRoute(builder: ((context)=> Layout())));
                  }),
                ),

              ListTile(
                leading: Icon(Icons.account_balance_rounded),
                title: Text('Profile'),
                onTap: ((){
                  Navigator.push(context, MaterialPageRoute(builder: ((context)=> Profile())));
                }
                ),
              
              ),
              ListTile(
                  leading:Icon(Icons.message),
                  title:Text('Message'),
                  onTap: ((){
                    Alert(
                        context: context,
                        type: AlertType.error,
                        title: "RFLUTTER ALERT",
                       desc: "Message is Emty",
                        buttons: [
                          DialogButton(
                           child: Text(
                             "Enter",
                             style: TextStyle(color: Colors.white, fontSize: 20),
                           ),
                            onPressed: () => Navigator.pop(context),
                           width: 120,
                      )
                     ],
                   ).show();
                  }),
                ),

                ListTile(
                  leading:Icon(Icons.share),
                  title:Text('Share'),
                  onTap: ((){
                    Navigator.push(context, MaterialPageRoute(builder: ((context)=> Profile())));
                  }),
                ),
                
                ListTile(
                  leading:Icon(Icons.outbox_sharp),
                  title:Text('Logout'),
                  onTap: ((){
                    Fluttertoast.showToast(
                       msg: "ออกจากระบบ",
                      backgroundColor: Colors.blue,
                      toastLength: Toast.LENGTH_SHORT,
                       gravity: ToastGravity.BOTTOM,
                       fontSize: 30.0,);
                    Navigator.push(context, MaterialPageRoute(builder: ((context)=> login()),
                    
                      ),
                    );
                  }),
                ),
                                
                ],
              )
          );
  }
}
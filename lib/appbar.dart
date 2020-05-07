import 'package:flutter/material.dart';
import 'package:quicklight/chat.dart';
import 'package:quicklight/chatbox.dart';
import 'package:quicklight/customerlist.dart';
import 'package:quicklight/manageproducts.dart';
import 'package:quicklight/notification.dart';
import 'package:quicklight/notificationname.dart';
import 'package:quicklight/slider.dart';

class AppBarClass extends PreferredSize {
 AppBarClass(BuildContext context,leading, drawer,heading, keyScaf,title)
     : super(
           preferredSize: Size.fromHeight(0),
           child: Container(
             padding: EdgeInsets.only(top: 0),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(22), bottomRight: Radius.circular(22) ),
                 color: Color(0xff54C571)
             ),
             margin: EdgeInsets.only(bottom:2),
             child: AppBar(
               
               actions: <Widget>[
               Image.asset('images/alertred.png',width: 30,
               )
               ],
               elevation: 10,
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
               backgroundColor: Colors.transparent,
               leading:  leading? drawer? InkWell(
                 onTap: () { keyScaf.currentState.openDrawer();},
                       child: Image.asset('images/drawer.png',width: 30,)
                       ):
               InkWell(
                 onTap: () {Navigator.pop(context);},
                       child:
                        Icon(Icons.arrow_back, color: Colors.white,),
                        ):Container(height: 1, width: 1,),

               title:title?
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                 Image.asset("images/driver.png"),
                 Text("john doe")
               ],):       
             Text('$heading', style: TextStyle(fontSize:16,color: Color(0xffFFFFFF),fontWeight: FontWeight.bold),),
               centerTitle: true,
              
             ),
           )
           );
}
class DrawerPage extends PreferredSize {
 DrawerPage(BuildContext context)
     : super(
           preferredSize: Size.fromHeight(0),
           child: Container(
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width * .7,
               color: Color(0xffFFFFFF),
               child: Container(
                   child: Column(
                 children: <Widget>[
             
                   Container(
                     height: 180,
                     width: MediaQuery.of(context).size.width/01,
                   decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/drawerimage.png',
                  ),
                    fit: BoxFit.fill)) 
               ),
               
Expanded(
  child: ListView(
    children: <Widget>[

 Container(
                 height:MediaQuery.of(context).size.height/20,
                  
                       child:
                          ListTile(
                            onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Slide()));
                            },
                            title: Text('Slider',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 16,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/home.png',
                          height: 20,
                           )
                           )
                           ),
                             Container(
                               margin: EdgeInsets.only(top: 6),
                                       height:MediaQuery.of(context).size.height/20,
                       child:
                          ListTile(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ManageProducrts()));
                            },
                            title: Text('Manage Product',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/shopping.png',
                           
                          height: 30,
                           )
                           )
                           ),
                             Container(
                               margin: EdgeInsets.only(top: 8),
                                       height:MediaQuery.of(context).size.height/20,
                  
                       child:
                          ListTile(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerList()));
                            },
                            title: Text('My Income',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/myincome.png',
                          height: 23,
                           )
                           )
                           ),
                             Container(
                                 height:MediaQuery.of(context).size.height/20,
                  
                     margin: EdgeInsets.only(top: 8),
                       child:
                          ListTile(
                            onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                            },
                            title: Text('chat',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/chat-speech-bubbles.png',
                          height: 24,
                           )
                           )
                           ),
                             Container(
                     margin: EdgeInsets.only(top: 8),
                      height:MediaQuery.of(context).size.height/20,
                       child:
                          ListTile(
                            onTap: (){},
                            title: Text('Add Categories',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/icon (6).png',
                          height: 20,
                           )
                           )
                           ),
                                   Container(
                     margin: EdgeInsets.only(top: 8),
                      height:MediaQuery.of(context).size.height/20,
                       child:
                          ListTile(
                            onTap: (){},
                            title: Text('Categories list',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/icon (6).png',
                          height: 20,
                           )
                           )
                           ),
                                   Container(
                     margin: EdgeInsets.only(top: 8),
                      height:MediaQuery.of(context).size.height/20,
                       child:
                          ListTile(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder:(context)=>Chatbox()));
                            },
                            title: Text('chatbox',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/delivery-man (1).png',
                          height: 26,
                           )
                           )
                           ),
                                   Container(
                     margin: EdgeInsets.only(top: 8),
                      height:MediaQuery.of(context).size.height/20,
                       child:
                          ListTile(
                            onTap: (){},
                            title: Text('Drivers List',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/delivery-man (1).png',
                          height: 26,
                           )
                           )
                           ),
                                   Container(
                     margin: EdgeInsets.only(top: 8),
                      height:MediaQuery.of(context).size.height/20,
                       child:
                          ListTile(
                            onTap: (){},
                            title: Text('Add Product',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/addproduct.png',
                          height: 26,
                           )
                           )
                           ),
                                   Container(
                     margin: EdgeInsets.only(top: 8),
                      height:MediaQuery.of(context).size.height/20,
                       child:
                          ListTile(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationName()));
                            },
                            title: Text('Notification Name',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/customerlist.png',
                          height: 26,
                           )
                           )
                           ),
                                   Container(
                     margin: EdgeInsets.only(top: 8),
                      height:MediaQuery.of(context).size.height/20,
                       child:
                          ListTile(
                            onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SendNotification()));
                            },
                            title: Text('Send Notification',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/alet.png',
                          height: 26,
                           )
                           )
                           ),
                                   Container(
                     margin: EdgeInsets.only(top: 8),
                      height:MediaQuery.of(context).size.height/20,
                       child:
                          ListTile(
                            onTap: (){},
                            title: Text('Settings',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/seting.png',
                          height: 26,
                           )
                           )
                           ),
                                   Container(
                     margin: EdgeInsets.only(top: 8),
                      height:MediaQuery.of(context).size.height/20,
                       child:
                          ListTile(
                            onTap: (){},
                            title: Text('Log out',
                           style: TextStyle(color: Color(0xff000000,),
                           fontSize: 15,fontWeight: FontWeight.bold),
                           ),
                           leading:Image.asset('images/sign-out-option.png',
                          height: 26,
                           )
                           )
                           ),
    ],
  )
)
                   ],
                 ),
               )
                
      

               
               
               )
               
               );
}
Widget alert(){
  return AlertDialog(
title: Text('data'),
content: SingleChildScrollView(
  child: Column(
    children: <Widget>[
     Stack(
       children: <Widget>[
       Image.asset('images/alert.png')
       ],
     )
    ],
  ),
),

  );
  
}
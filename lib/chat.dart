import 'package:flutter/material.dart';
import 'package:quicklight/appbar.dart';
import 'package:quicklight/cARDNAVIGATION.dart';

import 'package:quicklight/const.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerPage(context),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child: AppBarClass(context, true, false, 'Chat', _scaffoldKey,false),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 7,
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
               Container(
                height: 50,
                width: MediaQuery.of(context).size.width/1.4,
                 child:  CardNavigation(title1: "Customer",title2: "Driver",onPressed: (){chat2();
       
                 },),
               ),
                SizedBox(height: 23,),
              Container(
                  height: 34,
                  width: 230,
                  decoration: BoxDecoration(
               
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: green)
                  ),
                  child: 
                  TextField(
                  textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border:OutlineInputBorder(
                       borderSide: BorderSide.none
                        
                      ),
                      hintText: 'Search',
                      
                       hintStyle: TextStyle(color: green),
                      prefixIcon: IconButton(onPressed: (){},
                      padding: EdgeInsets.only(left: 40),
                      icon: Icon(Icons.search,
                      color: green,),
                    
                      ),
                     contentPadding: EdgeInsets.only(bottom: 9),
                    ),
                  ),
                
                )
                ],
              ),
            
            ),
          
             // color: Colors.purple,
            ),
            Container(
              height: 300,
            child: ListView.builder(
              itemCount:10,
              itemBuilder: (BuildContext context,int index)=>chat2()
            )
            )
          ],
        ),
        
      
      ),
    );
  }

  Widget chat2() {
    return Card(
        child: Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 3),
              margin: EdgeInsets.only(top: 7, left: 220),
              height: 18,
              width: 120,
              child: Row(
                children: <Widget>[
                  Text(
                    '20-Aug-2019',
                    style: TextStyle(color: text, fontSize: 10),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '12:00',
                    style: TextStyle(
                        color: time, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 7),
                      child: Text(
                        'Pm',
                        style: TextStyle(
                            color: time,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )),
          Container(
              margin: EdgeInsets.only(right: 100, bottom: 3),
              height: 42,
              width: 300,
              // color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        //  color: Colors.yellow,
                        image: DecorationImage(
                            image: AssetImage('images/driver.png'))),
                    height: 50,
                    width: 50,
                  ),
                  Container(
                      //  color: Colors.black,
                      width: 190,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              right: 90,
                            ),
                            child: Text(
                              'William',
                              style: TextStyle(
                                  color: text,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 4),
                            child: Text(
                              'Hey! when i received my parcel',
                              style: TextStyle(
                                  color: time,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ))
                ],
              ))
        ],
      ),
    )
    );
  }
  Widget chat() {
    return Card(
        child: Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 3),
              margin: EdgeInsets.only(top: 7, left: 220),
              height: 18,
              width: 120,
              child: Row(
                children: <Widget>[
                  Text(
                    '20-Aug-2019',
                    style: TextStyle(color: text, fontSize: 10),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '12:00',
                    style: TextStyle(
                        color: time, fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 7),
                      child: Text(
                        'Pm',
                        style: TextStyle(
                            color: time,
                            fontSize: 9,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )),
          Container(
              margin: EdgeInsets.only(right: 100, bottom: 3),
              height: 42,
              width: 300,
              // color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        //  color: Colors.yellow,
                        image: DecorationImage(
                            image: AssetImage('images/first.png'))),
                    height: 50,
                    width: 50,
                  ),
                  Container(
                      //  color: Colors.black,
                      width: 190,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              right: 90,
                            ),
                            child: Text(
                              'John lee',
                              style: TextStyle(
                                  color: text,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 4),
                            child: Text(
                              'Hey! when i received my parcel',
                              style: TextStyle(
                                  color: time,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ))
                ],
              ))
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:quicklight/appbar.dart';
class NotificationName extends StatefulWidget {
  @override
  _NotificationNameState createState() => _NotificationNameState();
}

class _NotificationNameState extends State<NotificationName> {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,true ,false, 'Notification ',_scaffoldKey ,false),
   ),
      body: Container(

        margin: EdgeInsets.only(top: 20),
child:
ListView.builder(
  itemCount: 10,
  itemBuilder: (BuildContext context,int index)=>

 seperatepart(),
            )      ),
    );
  }
  Widget seperatepart(){
    return Card(
      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
child: Container(
  color: Colors.green,
  margin: EdgeInsets.only(left: 20,top: 0),
 height:MediaQuery.of(context).size.height/7,
  width: MediaQuery.of(context).size.width/.7,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 12),
        child:Text('Name',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),),
      ),
        Container(
           width: MediaQuery.of(context).size.width/1.4, 
          margin: EdgeInsets.only(left: 14,top: 13),
        child:Text('Loream Ipsum dollar sit amet,consecute',
         style: TextStyle(
          color:Color(0xff666666),
          fontSize: 14,
          fontWeight: FontWeight.normal
        ),),
      )
  
    ],
  ),

),
    );
  }
}
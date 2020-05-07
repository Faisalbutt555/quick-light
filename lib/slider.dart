// import 'package:flutter_range_slider/flutter_range_slider.dart';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quicklight/appbar.dart';
class Slide extends StatefulWidget {
  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  var value=0.0;
  var newRange=0.0;
  var selectedRange=RangeValues(0.2,0.8);
  double values=0.0;
  var newrating;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldKey,
        drawer: DrawerPage(context),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,true ,true, 'Delivery Range',_scaffoldKey ,false),
   ),
      body: Container(
child:Column(
  children: <Widget>[
     charges('With in a City charges'),
     SizedBox(height: 9,width: 9,),
   Container(
     margin: EdgeInsets.only(top: 0,left: 14),
child: kilometer('Select Kilometer'), ),
Container(
     margin: EdgeInsets.only(top: 0,left: 14),
child: totalrange(),),
Container(
     margin: EdgeInsets.only(top: 0,left: 14),
     child: kilometer('Select Price'),
),
Container(
     margin: EdgeInsets.only(top: 0,left: 14),
child: totalrange(),),
Container(
     margin: EdgeInsets.only(top: 0,left: 14),
child: charges('With in city charges'),
),
Container(
     margin: EdgeInsets.only(top: 0,left: 14),
child: kilometer('Select Price'),
),
Container(
     margin: EdgeInsets.only(top: 0,left: 14),
child: totalrange(),),
Container(
     margin: EdgeInsets.only(top: 0,left: 14),
child: charges('With in city charges'),
),
Container(
     margin: EdgeInsets.only(top: 7,left: 14),
child: totalrange(),),

  ],
)

      ),
    );
  }
  Widget charges(String text){
    return Container(
      margin: EdgeInsets.only(top: 12),
      color: Color(0xff81CBC9),
      height:45,
      child: Row(
        children: <Widget>[
          SizedBox(width: 15,),
          Text('$text',
          style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
  Widget kilometer(String price){
    return Container(
      child: Row(
        children: <Widget>[
          Text('$price',
           style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }

Widget totalrange(){
  return Container(
    
    child: 
 range(),
 


      
  );  
}
  Widget range(){
    return Slider(
        value: values ,
        onChanged: (newrating){
setState(()=>values=newrating
  
);
        },
        divisions: 4,
        min: 0,
        max: 100,
      
      
    );
  }

}
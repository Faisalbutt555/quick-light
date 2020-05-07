

import 'package:flutter/material.dart';
import 'package:quicklight/dashboard.dart';
import 'package:quicklight/header.dart';
class Mobilenumber extends StatefulWidget {

  @override
  _MobilenumberState createState() => _MobilenumberState();
}

class _MobilenumberState extends State<Mobilenumber> {
  TextEditingController number=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       child: Column(
         children: <Widget>[
           Container(
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width,
            child: Header(text: 'Login',),
           ),
       Container(
          width: MediaQuery.of(context).size.width / 1.2,
        
          margin: EdgeInsets.only(top: 18),
          height: 70,
          padding: EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 4),
          decoration: BoxDecoration(
            color: Color(0xffEFEFEF),
            borderRadius: BorderRadius.circular(10),
    
          ),
          child:TextField(
            textInputAction: TextInputAction.next,
            controller: number,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              prefixIcon:Container(
                margin: EdgeInsets.only(left: 50),
                child:  Image.asset('images/mobile.png',
              ) ,
              ),
              border: InputBorder.none,
              hintText: 'Enter Mobile Number',
              hintStyle: TextStyle(
                  color: Color(0xff4BE172),
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
        Container(
         margin: EdgeInsets.only(top: 27,right: 30),
child: Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
RaisedButton(
  color: Color(0xff4BE172),
  padding: EdgeInsets.only(left: 50,right: 50,top: 12,bottom: 12),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
  },
  child: Text('Proceed',
   style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),),),
  ],
)


),
        
  Container(
margin: EdgeInsets.only(top:40 ),
alignment: Alignment.center,
  child: 
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
     Container(
        color: Color(0xffB2B9B9),
       height: 2,
       child: Text('______________',
      style: TextStyle(
                 
                  fontSize: 16,
                  fontWeight: FontWeight.bold),),
     ),
      Container(
        height: 23,
        child:  Text(' OR LOGIN WITH ',
      style: TextStyle(
                  color: Color(0xff4BE172),
                  fontSize: 16,
                  fontWeight: FontWeight.w900),),
      ),
      Container(
         color: Color(0xffB2B9B9),
        height: 2,
        child:  Text('____________',
      style: TextStyle(
                  
                  fontSize: 21,
                  fontWeight: FontWeight.bold),),
      ),              
    ],
  ),
  ),
       Container(
         margin: EdgeInsets.only(top: 10),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/fb.png',
            width: 70,),
            Image.asset('images/gmail.png',
            width: 70,),
          ],
        ),
      )       
         ],
       ),
      )
    );
  }


}

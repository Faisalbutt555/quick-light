import 'package:flutter/material.dart';
import 'package:quicklight/const.dart';

class Header extends StatelessWidget {
 String txt;
 Header({String text}){
   text==null? this.txt = '':this.txt = text;
 }

  @override
  Widget build(BuildContext context) {
    return Container(
     
      alignment: Alignment.bottomCenter,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2.4,
       decoration: BoxDecoration(
       image:DecorationImage(image: AssetImage("images/top.png"),
       fit: BoxFit.cover)
      ),
         child: Container( 
           margin: EdgeInsets.only(bottom: 20),
           child: Text("$txt",style: TextStyle(color: basic,fontSize: 25,fontWeight: FontWeight.bold),),
         )
    
    );
  }
  }
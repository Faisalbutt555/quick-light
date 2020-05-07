import 'package:flutter/material.dart';
import 'package:quicklight/const.dart';
class ButtonsClass {
  static smallButton(context, txt){
    return Card(
      elevation: 7,
      color: button,
          child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width*.38,
        margin: EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
            gradient:   LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [button, button])
        ),
       
          
          child: Text('$txt', style: TextStyle(color: white, fontWeight: FontWeight.bold,fontSize: 16),),
      ),
    );
  }

  static cardButton(context, txt){
    return Card(
      elevation: 7,
      color: button,
          child: Container(
        height:  MediaQuery.of(context).size.height/40,
        width: MediaQuery.of(context).size.width/4.5,
        margin: EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
            gradient:   LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [button, button])
        ),
       
          
          child: Text('$txt', style: TextStyle(color: white, fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width/31.5),),
      ),
    );
  }

  static wideButton(context, txt){
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20) ),
          gradient:   LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [button, button])
      ),
      child: Text('$txt', style: TextStyle(color: white, fontWeight: FontWeight.bold),),
    );
  }
  static upperradial(context, txt){
    return
         Container(
           
        height:  MediaQuery.of(context).size.height/15,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(15)),
           color: button  ),
       
          
          child: Text('$txt', style: TextStyle(color: white, fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.width/31.5),),
    
    );
  }

}
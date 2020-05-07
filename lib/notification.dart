

import 'package:flutter/material.dart';
import 'package:quicklight/appbar.dart';
class SendNotification extends StatefulWidget {
  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<SendNotification> {
double val1=1;
double val2=0;

    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    bool status=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,

        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,true ,false, 'Notification',_scaffoldKey ,false),
   ),
     body: Container(
       margin: EdgeInsets.only(top: 30),
child:
Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
  
    Container(
     
        child: colorchangebutton(),
      
    )
  ],
)
     ), 
    );
  }
  Widget colorchangebutton(){
    return Container(
      color: Color(0xff4BE172),
      height: 70,
      width: MediaQuery.of(context).size.width,
   child:Row(
     children: <Widget>[
         Container(

  
     width: MediaQuery.of(context).size.width/1.5,
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
    Container
    (
      margin: EdgeInsets.only(right: 40),
      child: 
      
          Text('Define Delivery Range',
          style: TextStyle(fontSize:16,color: Color(0xffFFFFFF),fontWeight: FontWeight.bold),),
    ),SizedBox(height: 6,),
      
         Text('*Within city, out of city and country',
          style: TextStyle(fontSize:13,color: Color(0xff9F9F9F),fontWeight: FontWeight.bold),), 
         ],
     ),
   ),

   Container(
     decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
       borderRadius: BorderRadius.circular(5)
     ),
     margin: EdgeInsets.only(left: 30),
     height: 30,
     width: 85,
     child: Column(
       mainAxisAlignment: MainAxisAlignment.end,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Container(
       
           decoration: BoxDecoration(
             color: Color(0xffE8E8E8),
             borderRadius: BorderRadius.circular(6)
           ),
          
           height: 27,
           width: 84,
           
           child: Row(
             children: <Widget>[
  InkWell(
    onTap: (){
      setState(() {
      if( val1==0){
         val1=1;
       val2=0;
       }
       else{
        val1=0;
        val2=1;
       }
      
      });
    },
    child: Opacity(
    opacity: val1,
      child: Container(
      decoration: BoxDecoration(
        
        image: DecorationImage(
          image: AssetImage('images/switchimage.png',
          )
          
        )
      ),
      height: 40,
            width: 39,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('off',
                style: TextStyle(color:Color(0xffFFFFFF),
                fontWeight: FontWeight.bold,fontSize: 15),),
              ],
            )
    ),
  ) 
        ),
        InkWell(onTap: (){
             setState(() {
       if( val2==0){
         val2=1;
       val1=0;
       }
       else{
        val2=0;
        val1=1;
       }
      
      });
        },
        child:
         Opacity(
    opacity: val2,
    child:
         Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/onn.png')
      )
    ),
          height: 30,
          width:38,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('ON',
              style: TextStyle(color:Color(0xffFFFFFF),
              fontWeight: FontWeight.bold,fontSize: 15),),
            ],
          )
         ) 
        ),
        )
             ],
           ),
         )
      
       ],
     )
   )
   ]
   )
    );
  }
}
   
 
    
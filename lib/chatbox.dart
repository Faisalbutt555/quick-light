import 'package:flutter/material.dart';
import 'package:quicklight/appbar.dart';
import 'package:quicklight/const.dart';
class Chatbox extends StatefulWidget {
  @override
  _ChatboxState createState() => _ChatboxState();
}

class _ChatboxState extends State<Chatbox> {
  int date=20;
  String month="june";
  int time=12;
  String am="pm"; 
   final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      key: _scaffoldKey,
      drawer: DrawerPage(context),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90), // here the desired height
        child: AppBarClass(context, true, false, 'JohnDoe', _scaffoldKey,true),
      ),
   body: Container(
child: Column(
  crossAxisAlignment: CrossAxisAlignment.end,
  children: <Widget>[
    Container(
     width: MediaQuery.of(context).size.width,
     alignment: Alignment.center,
      height: 30,
      child: Text('$date''$month\At$time$am',
      style: TextStyle(color: green,fontSize: 14,fontWeight: FontWeight.bold),
      ),  
    ),
    SizedBox(height: 10,),
    Expanded(
      flex: 6,
      //height: MediaQuery.of(context).size.height/1.7,
    child:
    ListView.builder(
itemCount: 10,
itemBuilder: (BuildContext context,int index)=>index<3?chatbox(1,index):index==4?chatbox(2,index):chatbox(1,index)
    )
    ),
     Expanded(
flex: 1,
            child: Container(
         margin: EdgeInsets.only(right: 20,bottom: 10),
             height: 40,
             width: 40,
          
             child:Image.asset("images/driver.png",fit: BoxFit.cover,),
           ),
     ),
      Expanded(
        flex: 1,
        child: inputtext(),
      )
  ],
)
   ),   
    );
  }
  Widget inputtext(){
return Container(
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23),
  decoration: BoxDecoration(
    color: Colors.green,
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(12),
      topLeft: Radius.circular(12)
    )
  ),
  child:Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
  SingleChildScrollView(
 child:
    
          Container(
    
          decoration: BoxDecoration(
    
            borderRadius: BorderRadius.circular(7),
    
            border: Border.all(color: green)
    
          ),
    
            width: MediaQuery.of(context).size.width/1.2,
    
            height:43,
    
           child: TextFormField( 
    
             decoration: InputDecoration(
    
               hintMaxLines: 3,
    
              border: OutlineInputBorder(
    
                borderSide: BorderSide.none
    
              ),
    
               hintText: 'dfffdddddddddd\ndfffffs',
    
               contentPadding: EdgeInsets.only(bottom: 3),
    
               hintStyle: TextStyle(color: Colors.grey),
    
              suffixIcon: InkWell(onTap: (){},
    
              child:
    
              Image.asset('images/sent-mail.png')
    
             )
    
             ),
    
           ),
    
          )
    
        
  ),
],
  ),

);
  }
  Widget chatbox(int val,int index){
    return Container(
  
      margin: EdgeInsets.only(top: 10),
 child: Row(
   mainAxisAlignment: MainAxisAlignment.center,
   children: <Widget>[
   Container(
     child: Row(
       children: <Widget>[
         Container(
           height: 40,
           width: 40,
        
           child:index>3&&index.isEven?Container():Image.asset("images/driver.png",fit: BoxFit.cover,),
         ),
          Card( 
            margin: EdgeInsets.only(left: index>3&&index.isEven?40:15),
           color: Color(0xffF6F6F6),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.only(
               bottomLeft:Radius.circular(2),
               bottomRight: Radius.circular(13),
               topLeft: Radius.circular(2),
               topRight: Radius.circular(3)

               )
               ),
           child:
           Container(
             width: MediaQuery.of(context).size.width/1.4,
             child:  Text('sssssssssssssssssssssssssssssssssssssssssssrrrrr',
             style: TextStyle(color: Color(0xff979898)),),)
         )
       ],
     ),
   )
 ],)

    );
  }
 

  
}
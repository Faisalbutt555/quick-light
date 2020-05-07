import 'package:flutter/material.dart';
import 'package:quicklight/appbar.dart';
class ManageProducrts extends StatefulWidget {
  @override
  _ManageProducrtsState createState() => _ManageProducrtsState();
}

class _ManageProducrtsState extends State<ManageProducrts> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  int price=300;
  String name='Pure Drip';
  Widget build(BuildContext context) {
    return  Scaffold(
 key: _scaffoldKey,

        drawer: DrawerPage(context),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,true ,false, 'Manage products',_scaffoldKey,false ),
   ),
   body: Container(
     child: gridview()
   ),
      
    );
  }
  Widget gridview(){
return GridView.builder(
  itemCount: 10,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount:2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,

    ),
  itemBuilder: (BuildContext context, int index){
    return Card(
      margin: EdgeInsets.only(left: 20,right: 20,top: 10),
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      child: Column(
children: <Widget>[
          Container(
            height: 140,
            child: Image.asset('images/product.png')),  
           Container(
            margin: EdgeInsets.only(left: 20),
             height: 30,
             child: Row(
             children: <Widget>[
               Container(
                 child: Text('$name',
                 style: TextStyle(color: Color(0xff000000),fontSize: 15,fontWeight: FontWeight.bold),) ,
               ),
               SizedBox(width: 60,),
               Container(
                 child:  Image.asset('images/dot.png',
                 width: 04,),
               )
           ],),
          
           ),
           
           Container(
             margin: EdgeInsets.only(right: 90,top:2),
                 child: Text('\$$price',
                  style: TextStyle(color: Color(0xff4BE172),fontSize: 15,fontWeight: FontWeight.bold),) ,) ,
               
            
           ]
      )
    );
  },
  
);
    
  }
}
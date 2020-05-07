import 'package:flutter/material.dart';
import 'package:quicklight/appbar.dart';
import 'package:quicklight/cARDNAVIGATION.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    int no;
 return Scaffold(
       key: _scaffoldKey,

        drawer: DrawerPage(context),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,true ,true, 'Order Management',_scaffoldKey ,false),
   ),
   body: Container(
     margin: EdgeInsets.only(left:25,right: 25),
     child: Column(
       children: <Widget>[
          ordercards("Incoming orders",45,1),
         ordercards('Assigned Orders',25,2),
         ordercards('Delivered Orders',95,3),
        
       ],
     ),
   ),  

   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     floatingActionButton: FloatingActionButton(
       onPressed: () {
         setState(() {
          // screen = 1;
         });
       },
       child: Image.asset(
         'images/plus.png',
         scale: 4,
       ),
     backgroundColor: Color(0xff54C571),
     ),
     bottomNavigationBar: BottomAppBar(
      color: Color(0xff54C571),
         shape: CircularNotchedRectangle(),
         child: Row(
           mainAxisSize: MainAxisSize.max,
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: <Widget>[
             IconButton(
               onPressed: () {
                 setState(() {
                 //  screen = 2;
                no=CardNavigation().button;
                print("page$no");
                 });
               },
               icon: Image.asset(
                 'images/home.png',
             width: 30,
               color: Colors.white,
               ),
               
             ),
             IconButton(
               onPressed: () {
                 setState(() {
                  // screen = 3;
                 });
               },
               icon: Image.asset(
                 'images/delivery-man (1).png',
                 width: 30,
                 color: Colors.white,
               ),
             )
           ],
         )),

   );
  }
  Widget ordercards(String text,int number,int icon,){
return Card(
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  child:  
Container(
  width: MediaQuery.of(context).size.width,
   height: 145,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: icon==1?Color(0xffFF5353):icon==2?Color(0xffFF9700):Color(0xff4CB050),
  ),
 
    child:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Container(
        //color: Colors.green,
        height: 50,
        child: icon==1?Image.asset('images/addproduct.png',
      fit: BoxFit.cover,
      color: Colors.white,)
      :icon==2?Image.asset('images/assignordrer.png'):icon==3?Image.asset('images/deliveredorder.png'):Image.asset('images/deliveredorder.png'),
      
      ),
      SizedBox(width: 10,),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
    Text('$text',
        style: TextStyle(color: Color(0xffFFFFFF),fontSize: 22,fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        Text('$number',
         style: TextStyle(color: Color(0xffFFFFFF),fontSize: 38,fontWeight: FontWeight.bold),)
        ],
        
      )
     
      
      ],
    

  ),
)
);

  }
}
import 'package:flutter/material.dart';
import 'package:quicklight/appbar.dart';
class CustomerList extends StatefulWidget {
  @override
  _CustoerListState createState() => _CustoerListState();
}

class _CustoerListState extends State<CustomerList> {
  String name='Customer Name';
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       key: _scaffoldKey,

        drawer: DrawerPage(context),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90), // here the desired height
            child: AppBarClass(context,true ,false, 'Customer List',_scaffoldKey,false ),
   ),
   body: Container(
     margin: EdgeInsets.only(top: 0),
     child:
      customerlist()   
   ),
      
    );
  }
  Widget customerlist(){
  return ListView.builder(
     itemCount: 2,
 itemBuilder:  (BuildContext context, int index){
  return Container(
    height: 450,
    color: Colors.green,
    child: Column(
      children: <Widget>[
        Container(   
          child: 
        Row(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
                color: Color(0xffF5F5F5),
                
              child: Text('  A',
              style: TextStyle(color: Color(0xff000000),fontSize: 16,),
              ),
            )
          ],
        ),
        ),
        SizedBox(height: 7,),
   Column(
     children: <Widget>[
       cardd(),
       cardd(),
         cardd(),
       
     ],
   )
      
      ],
    )
  );
},

  );
  }Widget cardd(){

    return     
       Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            height: 125,
            margin: EdgeInsets.only(left: 90,right: 90,),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
 Text('data')
            ],)
           
          ),
        );
  }
//   Widget alphabetlist(){
// return ListView.separated(
//   itemBuilder: (context, position) {
//         return cardd();
//       },
//       separatorBuilder: (context, position) {
//        // return SeparatorItem();
//       },
//       itemCount: 4,
// );
//   }
//   Widget sperated
  
    
  
  
}
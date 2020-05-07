import 'package:flutter/material.dart';
import 'package:quicklight/const.dart';
class CardNavigation extends StatefulWidget {
  String text1;
  String text2;
  int button=1;
  final Function onPressed;
 
  CardNavigation(
      {String title1, this.onPressed, String title2,}) {
    title1 == null ? this.text1 = "title1" : this.text1 = title1;
    title2 == null ? this.text2 = "title2" : this.text2 = title2;
  }
  @override
  _CardNavigationState createState() => _CardNavigationState();
}

class _CardNavigationState extends State<CardNavigation> {
  int selectpage = 1;
  @override
  Widget build(BuildContext context) {
 
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          //color: button,
          // border: Border.all(
          //   color: button
          // )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            navbuttton("${widget.text1}", 1),
            navbuttton("${widget.text2}", 2)
          ],
        ),
      ),
    );
  }

  Widget navbuttton(String title, int butt,) {
    return Expanded(
      flex: 2,
          child: InkWell(
        onTap: () {
          setState(() {
          
            selectpage = butt;
            widget.button=butt;
          
            widget.onPressed();
              print("asdfasasasdf${widget.button}");
          });
         // widget.onPressed();
        },
        child: Container(
          decoration: BoxDecoration(
              color: selectpage == butt ? button : Color(0xffF8F8F8),
              borderRadius: BorderRadius.only(
                bottomLeft: butt == 1 ? Radius.circular(10) : Radius.circular(0),
                topLeft: butt == 1 ? Radius.circular(10) : Radius.circular(0),
                bottomRight: butt == 2 ? Radius.circular(10) : Radius.circular(0),
                topRight: butt == 2 ? Radius.circular(10) : Radius.circular(0),
              ),
              border: Border.all(color: button)),
          alignment: Alignment.center,
         
          child: Text("$title",style: TextStyle(color: selectpage==butt?white:Colors.black,fontSize: 16),),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class container1 extends StatelessWidget {
  late String text;
   container1(String t1){
     text = t1;
   }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.rice_bowl,
                color: Color(0xff4E6069)
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xffE5E9F2)),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff5A656C),
              ),
            ),
          )
        ],
      ),
    );
  }
}

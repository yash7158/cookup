import 'package:flutter/material.dart';

class ingredient extends StatelessWidget {
  late String text1;

  ingredient(String s) {
    text1 = s;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              spreadRadius: 2.0,
            )
          ],
          color: Color(0xffFBFBFB),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.rice_bowl,
                    color: Colors.grey,
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color(0xffE6EAF2)),
              ),
              Text(text1),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Icon(
                      Icons.add,
                      color: Color(0xff95C0C3),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Color(0xff95C0C3))),
                  ),
                  Padding(padding: EdgeInsets.all(20), child: Text("1")),
                  Container(
                    child: Icon(
                      Icons.remove,
                      color: Color(0xff95C0C3),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Color(0xff95C0C3))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

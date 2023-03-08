import 'package:flutter/material.dart';

class card extends StatelessWidget {
  card(this.colour, {this.childclass});
  final Color colour;
  final childclass;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childclass,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        //color: colour,
        border: Border.all(color: Color(0xff74BEFA)),
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}

class card1 extends StatelessWidget {
  card1(this.colour, {this.childclass});
  final Color colour;
  final childclass;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childclass,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xffE6D8F2),
              blurRadius: 50.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.1,
              0.4,
              0.8,
              0.9,
            ],
            colors: [
              Color(0xff5A96EB),
              Color(0xffBE6DFE),
              Color(0xffEA85A3),
              Color(0xffF68F85),
            ],
          ),
          color: colour,
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}

class card2 extends StatelessWidget {
  card2(this.colour, {this.childclass});
  final Color colour;
  final childclass;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childclass,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xffE6D8F2),
          blurRadius: 50.0,
          spreadRadius: 0.0,
          offset: Offset(2.0, 2.0), // shadow direction: bottom right
        )
      ], color: colour, borderRadius: BorderRadius.circular(20.0)),
    );
  }
}

class card3 extends StatelessWidget {
  card3(this.colour, {this.childclass});
  final Color colour;
  final childclass;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childclass,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xffE6D8F2),
          blurRadius: 50.0,
          spreadRadius: 0.0,
          offset: Offset(2.0, 2.0), // shadow direction: bottom right
        )
      ], color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}

class card4 extends StatelessWidget {
  card4(this.colour, {this.childclass});
  final Color colour;
  final childclass;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childclass,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xffE6D8F2),
          blurRadius: 50.0,
          spreadRadius: 0.0,
          offset: Offset(2.0, 2.0), // shadow direction: bottom right
        )
      ], color: colour, borderRadius: BorderRadius.circular(100)),
    );
  }
}

class card5 extends StatelessWidget {
  card5(this.colour, {this.childclass});
  final Color colour;
  final childclass;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childclass,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            stops: [
              0.1,
              0.4,
              0.8,
              0.9,
            ],
            colors: [
              Color(0xff5A96EB),
              Color(0xffBE6DFE),
              Color(0xffEA85A3),
              Color(0xffF68F85),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xffE6D8F2),
              blurRadius: 50.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            ),
          ],
          color: colour,
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
class card6 extends StatelessWidget {
  card6(this.colour, {this.childclass});
  final Color colour;
  final childclass;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childclass,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xffE6D8F2),
          blurRadius: 0.0,
          spreadRadius: 0.0,
          offset: Offset(2.0, 2.0), // shadow direction: bottom right
        )
      ], color: colour, borderRadius: BorderRadius.circular(30.0)),
    );
  }
}

class card7 extends StatelessWidget {
  card7(this.colour, {this.childclass});
  final Color colour;
  final childclass;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childclass,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xffE6D8F2),
          blurRadius: 0.0,
          spreadRadius: 0.0,
          offset: Offset(2.0, 2.0), // shadow direction: bottom right
        )
      ], color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}

class card8 extends StatelessWidget {
  card8(this.colour, {this.childclass});
  final Color colour;
  final childclass;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childclass,
      margin: EdgeInsets.only(left: 15,right: 15,bottom: 15,top:0),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xffE6D8F2),
          blurRadius: 0.0,
          spreadRadius: 0.0,
          offset: Offset(2.0, 2.0), // shadow direction: bottom right
        )
      ], color: colour, borderRadius: BorderRadius.circular(30.0)),
    );
  }
}

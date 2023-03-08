import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class laoding extends StatelessWidget {
  const laoding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color : Color(0xffF6F6F6),
        child: Center(
          child: Lottie.asset('assets/127434-cooking-loader.json'),
        ),
      ),
    );
  }
}

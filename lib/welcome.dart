import 'package:cookup/openai.dart';
import 'package:cookup/resuable_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade300,
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 15,right: 15,top:30,bottom: 0 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text("CookUp",style: GoogleFonts.lobster(
                          textStyle: TextStyle(
                              fontSize: 40,
                              color: Color(0xff042728),
                              //fontWeight: FontWeight.w600,
                              //fontStyle: FontStyle.italic

                          ),)
                        )],
                    )
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 60,
                ),
                Lottie.asset('assets/126364-cooking.json'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Welcome",style: TextStyle(
                          fontSize: 30,
                          color: Color(0xff042728),
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("We are here to asset you with preparing delicious and inventive meals from everyday ingredients.",textAlign: TextAlign.center,style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff042728),
                          fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: card4(
                    Color(0xff042728),
                    childclass: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/login');
                  },
                  child: card8(
                    Color(0xff042728),
                    childclass: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Already Have an account",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}

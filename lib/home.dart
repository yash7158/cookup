import 'package:cookup/Const.dart';
import 'package:cookup/ingridents.dart';
import 'package:cookup/openai.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'supabase.dart';

class main1 extends StatefulWidget {
  const main1({Key? key}) : super(key: key);

  @override
  State<main1> createState() => _main1State();
}

class _main1State extends State<main1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset('assets/1.png'),
            Column(
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Color(0xffF6F6F6),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 20, bottom: 10),
                                child: Text(
                                  "Ingredients",
                                  style: TextStyle(
                                      color: Color(0xff0E2633),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                )),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, bottom: 0, top: 0),
                                child: Text(
                                  "Add all the Ingredients you have below",
                                  style: TextStyle(
                                      color: Color(0xffAAAEB1),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                )),
                            Expanded(
                              child: ListView(
                                scrollDirection: Axis.vertical,
                                children: [
                                  Column(
                                    children: [
                                      ingredient("Potato"),
                                      ingredient("Bread"),
                                      ingredient("Butter")
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 80,
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap: (){
                      //getdata1();
                    },
                    child: GestureDetector(
                      onTap: () async{
                        Navigator.pushNamed(context, '/loading');
                        await openaiMain(dishNamePromt);
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/detail');
                        //getdata1();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Color(0xff042728)),
                        child: Padding(
                            padding: EdgeInsets.all(25),
                            child: Center(
                              child: Text(
                                "Get Suggestions",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

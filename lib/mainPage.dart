
import 'package:cookup/Const.dart';
import 'package:cookup/containerWithRow.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

import 'ingridents.dart';

class results extends StatelessWidget {
  const results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.network(
          //"https://assets.vogue.in/photos/5ce428c81dc26724c4c786c1/1:1/pass/undefined"
              imageurl
          ,loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return SizedBox(
                  child: Shimmer.fromColors(
                    highlightColor: Colors.white,
                    baseColor: Colors.grey.shade500,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  )
                );
              },
            ),
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
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20,bottom: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(25)),
                                        color: Colors.grey.shade300
                                    ),
                                    child: SizedBox(
                                      height: 7,
                                      width: 80,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: ListView(
                                padding: EdgeInsets.zero,
                                children: [
                                  Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20, top: 0, bottom: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Flexible(
                                              child: Text(
                                                "$dishName",
                                                style: TextStyle(
                                                    color: Color(0xff0E2633),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.alarm,
                                                  color: Color(0xffB9BDBE),
                                                ),
                                                SizedBox(width: 5,),
                                                Text(
                                                  "15 Min",style: TextStyle(
                                                  color: Color(0xffA8ABAE)
                                                ),
                                                )
                                              ],
                                            )
                                          ],
                                        )),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20, bottom: 0, top: 0),
                                        child: Text.rich(
                                          TextSpan(
                                          children: [TextSpan(text: "$about ",
                                          style: TextStyle(
                                              color: Color(0xffAAAEB1),
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                            TextSpan(text: "View More",
                                                style: TextStyle(
                                                    color: Color(0xff3C5253),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold))]
                                          )

                                        )),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              container1("${totalCarbs}g carbs"),
                                              SizedBox(height: 30,),
                                              container1("${totalKcal} Kcal")
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(20),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              container1("${totalProteins}g protains"),
                                              SizedBox(height: 30,),
                                              container1("${totalFats}g fats")
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(20),
                                      child: Text(
                                        "Instructions",
                                        style: TextStyle(
                                            color: Color(0xff042728),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20, bottom: 0, top: 0),
                                        child: Text(
                                          instruction,
                                          style: TextStyle(
                                              color: Color(0xffAAAEB1),
                                              //fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )),


                                    SizedBox(
                                      height: 80,
                                    )
                                  ],
                                ),]
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),

          ],
        ),
      ),
    );
  }
}

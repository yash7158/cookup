import 'package:cookup/resuable_card.dart';
import 'package:cookup/supabase.dart';
import 'package:flutter/material.dart';

import 'Const.dart';


class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController name = TextEditingController();
    return Scaffold(
      body: Container(
          child: Stack(children: [
            Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      color:Color(0xff042728),
                      child: Center(
                        child: ClipRRect(
                          child: Image(
                            image: AssetImage('assets/4.png'),
                            height: 200,
                          ),

                        ),
                      ),
                    )),
                Expanded(flex: 3, child: Container(
                  color: Colors.grey.shade300,
                )),
              ],
            ),
            SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 150,),
                    Column(
                      children: [
                        Container(
                          child: card6(
                            Colors.white,
                            childclass: Column(
                              children: [
                                card2(Colors.white,
                                childclass: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: TextFormField(
                                      controller:name,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter Name';
                                        }
                                      },
                                      //keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          icon: Icon(Icons.person),
                                          hintText: 'Name',
                                          labelText: 'Name',
                                          border: InputBorder.none),
                                    ))),
                                card2(Colors.white,
                                    childclass: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: TextFormField(
                                          controller:email,
                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Please enter Email';
                                            }
                                          },
                                          //keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              icon: Icon(Icons.email_outlined),
                                              hintText: 'username@example.com',
                                              labelText: 'Email',
                                              border: InputBorder.none),
                                        ))),
                                card2(Colors.white,
                                    childclass: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: TextFormField(
                                          controller: password,
                                          obscureText: true,

                                          validator: (value) {
                                            if (value == null || value.isEmpty) {
                                              return 'Please enter your Password';
                                            }
                                          },
                                          //keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            icon: Icon(Icons.lock),
                                            hintText: 'Password',
                                            labelText: 'Password',
                                            border: InputBorder.none,
                                          ),
                                        ))),

                                GestureDetector(
                                  onTap: () async{
                                    Email = email.value.text;
                                    Password = password.value.text;
                                    Name = name.value.text;
                                    if(await signup1()){
                                      Navigator.pushNamed(context, '/');
                                    }
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
                                              "Sign up",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0,
                                ),
                                GestureDetector(
                                  onTap: () async{
                                    if(await loginG()){
                                      Navigator.pushNamed(context, '/');
                                    }
                                  },
                                  child: card4(
                                    Colors.white,
                                    childclass: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                          children: [
                                            ClipRRect(
                                                borderRadius: BorderRadius.circular(8.0),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/img.png'),
                                                  height: 36,
                                                ))
                                            ,Text(
                                              "Sign up With Google",
                                              style: TextStyle(
                                                  color: Color(0xff042728),
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),



                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )),
          ])),
    );
  }
}

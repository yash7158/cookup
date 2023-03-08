import 'package:cookup/resuable_card.dart';
import 'package:cookup/supabase.dart';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';



import 'Const.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

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
                    Column(
                      children: [
                        SizedBox(height: 120,),
                        Container(
                          child: card6(
                            Colors.white,
                            childclass: Column(
                              children: [
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
                                              icon: Icon(Icons.person),
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
                                  onTap: () {
                                   Email = email.value.text;
                                   Password = password.value.text;
                                    //gender = Gender.value.text;
                                  },
                                  child: GestureDetector(
                                    onTap: () async{
                                      if(await login1()) {
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
                                                "Login",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pushNamed(context, '/signup');
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text("Don't have account?",style: TextStyle(
                                        color: Color(0xff042728),
                                        fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
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
                                          "Sign in With Google",
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
                ))
          ])),
    );
  }
}

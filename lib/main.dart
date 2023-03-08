import 'package:cookup/home.dart';
import 'package:cookup/loading.dart';
import 'package:cookup/login.dart';
import 'package:cookup/mainPage.dart';
import 'package:cookup/signup.dart';
import 'package:cookup/welcome.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'Const.dart';




Future<void> main() async {
  Supabase.initialize(
      url: supabaseUrl,
      anonKey:
          supabaseKey);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => startApp(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => (main1()),
            '/detail': (context) => (results()),
            '/login': (context) => (login()),
            '/signup':(context) => (signup()),
            '/welcome':(context) =>(welcome()),
            '/loading':(context) =>(laoding())
          }
      ),
    );
  }
}

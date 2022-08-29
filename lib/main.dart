import 'package:flutter/material.dart';
import './pages/Home.dart';
import './pages/login.dart';
import './pages/register.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        "home" : (context) => Home(),
        "login" : (context) => Login(),
        "register" : (context) => Register(),
    },
    );
  }
}
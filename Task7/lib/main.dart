import 'package:flutter/material.dart';
import 'package:task/screens/Home.dart';
import 'package:task/screens/Login.dart';
import 'package:task/screens/Selectlocation.dart';
import 'package:task/screens/SignUp.dart';
import 'package:task/screens/WelocmeScreen.dart';
import 'package:task/screens/splashScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // "A":(contaxt)=>Splashscreen(),
        "B": (contaxt) => WelcomeScreen(),
        "C": (contaxt) => Selectlocation(),
        "D": (contaxt) => Login(),
        "E":  (contaxt) => Signup(),
        "F":(contaxt) =>  Home()
      },
      home: Scaffold(body: Splashscreen()),
    );
  }
}

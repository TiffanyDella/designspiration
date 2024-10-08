import 'package:designspiration/StartScreens/Choose.dart';
import 'package:designspiration/StartScreens/SignIn.dart';
import 'package:designspiration/StartScreens/SignUp.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designspiration',
      theme: ThemeData(
      ),
      home: Choose(),
    );
  }
}


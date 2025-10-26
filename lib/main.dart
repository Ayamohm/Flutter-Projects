import 'package:app_test/Home_Screen.dart';
import 'package:app_test/Login_Screen.dart';
import 'package:app_test/Massenger_Screen.dart';
import 'package:app_test/UsersScreen.dart';
import 'package:flutter/material.dart';

import 'Counter_Screen.dart';

void main() {
  runApp(MyApp());
}

//2 main widget -->
//statless
//statfull
class MyApp extends StatelessWidget
{
  //constructor
  //build

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:CounterScreen()

    );
  }

}
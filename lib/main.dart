

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'modules/bmi/Calculator_Screen.dart';

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
        home:BMICalculator()

    );
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defultButton({
  required double width,
  required Color color,
  required VoidCallback function,
  required String text,
  double radius=0.0
})=>Container(
  width: width,
  decoration: BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radius),
  ),
  child: MaterialButton(
    onPressed: function,
    height: 40,
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
          color: Colors.white,
          fontWeight:FontWeight.bold,
          fontSize: 20.0
      ),),
  ),
);
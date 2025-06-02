import 'dart:ui';
import 'package:flutter/material.dart';

TextStyle titleStyle({
  Color? color,
  double? textSize,
}){
  return TextStyle(
    color: color,
    fontSize: textSize,
    fontWeight: FontWeight.bold,
  );
}
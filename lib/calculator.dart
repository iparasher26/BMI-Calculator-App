import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Calculator{

  Calculator({required this.weight,required this.height});

  final int weight;
  final int height;

  double bmi_=0;

  String calculate(){
    bmi_= weight / pow(height/100, 2);
    return bmi_.toStringAsFixed(1);
  }

  String get_result(){
    if (bmi_ > 25){
      return "OVER-WEIGHT";
    }
    else if (bmi_>18.5){
      return 'PERFECTLY HEALTHY';
    }
    else {
      return 'UNDER-WEIGHT';
    }
  }

  String interpretation(){
    if (bmi_ >= 25){
      return "CONGRATS! You're a foodie <3!";
    }
    else if (bmi_>=18.5){
      return "How does it feel to be God's favourite?";
    }
    else {
      return "Congrats, you're metabolism is fire";
    }
  }
}
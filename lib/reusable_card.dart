import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

final double marginValue=10.0;
final double borderRadii=10.0;

@immutable
class ReusableCard extends StatelessWidget {

  ReusableCard({ this.colour,  this.cardChild,required this.onPress});

  final Color? colour;
  final Widget? cardChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(marginValue),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(borderRadii),
        ),
      ),
    );
  }
}
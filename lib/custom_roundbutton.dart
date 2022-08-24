import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class CustomButton extends StatelessWidget {

  CustomButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
          height: 56.0,
          width: 56.0
      ),
      shape: CircleBorder(),
      elevation: 6.0,
      fillColor: kinactiveBoxColour,
    );
  }
}
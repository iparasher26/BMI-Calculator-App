import 'package:flutter/material.dart';
import 'constants.dart';

class bottom_button extends StatelessWidget {

  bottom_button({required this.onTap, required this.text});

  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kbottomContainerColor,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        height: kbottomContainerHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                text,
                style: kLargeButton ),
          ], //children
        ),
      ),
    );
  }
}
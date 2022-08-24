import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bmi_calculator/constants.dart';

class IconText extends StatelessWidget {

  IconText({ this.name, this.text});

  final IconData? name;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(name, size: 80.0,),
        SizedBox(
          height: 20.0,
        ),
        Text(text==null?"":text!,             // Ternary operator  (if_cond)?(sol):(else_block)!
          style: klabelTextstyle,
        ),
      ],
    );
  }
}


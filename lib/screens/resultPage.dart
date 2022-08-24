import 'package:bmi_calculator/constants.dart';
import 'InputPage.dart';
import '../reusable_card.dart';
import '../bottom_button.dart';
import 'package:bmi_calculator/bottom_button.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  ResultPage({required this.calculator,required this.getResult,required this.interpretation});

  final String getResult;
  final String calculator;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR", style: TextStyle(fontSize: 20.0)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20.0),
              child: Text('Your Result', textAlign: TextAlign.left,
                style: kPage2title,
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                colour: kboxColour,
                onPress: () {  },
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(getResult.toUpperCase(), style: kResultText),
                    Text(calculator.toUpperCase(), style: kBMInumber),
                    Text(interpretation.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: kSuggestion),
                  ],
                ),
              ),
          ),
          bottom_button(
              onTap: (){
                Navigator.pop(context);
              },
              text: 'RE-CALCULATE',
             ),
            ], //children
           ),
          );
  }
}

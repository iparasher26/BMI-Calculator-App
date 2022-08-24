import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../icon_text.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/custom_roundbutton.dart';
import 'package:bmi_calculator/bottom_button.dart';
import 'resultPage.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/calculator.dart';

enum Gender{
  male,
  female,
  none,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender=Gender.none;
  int height=180;
  int weight=74;
  int age=21;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 110.0,
        title: Text('BMI CALCULATOR'),
      ),
      body:  Column(
        children: [
            Expanded(
              child: Row(
              children: [
                 Expanded(child: ReusableCard(
                   onPress: (){
                     setState(() {
                       selectedGender=Gender.male;
                     });
                   },
                   colour: selectedGender==Gender.male ? kboxColour : kinactiveBoxColour,
                   cardChild: IconText(name:FontAwesomeIcons.mars,text: "MALE",),
                 ),
                 ),

               Expanded(child: ReusableCard(
                 onPress: (){
                   setState(() {
                     selectedGender=Gender.female;
                   });
                 },
                 colour: selectedGender==Gender.female ? kboxColour : kinactiveBoxColour,
                 cardChild: IconText(name: FontAwesomeIcons.venus, text: "FEMALE",),)),
              ],
            ),
            ),

            Expanded(child:
            ReusableCard(
              onPress: (){},
              colour: kboxColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HEIGHT",
                style:kNumberstyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(height.toString(),
                    style: TextStyle( fontSize: 50.0, fontWeight: FontWeight.w900),
                    ),

                    Text("cm", style: TextStyle(
                      fontSize: 20.0, color: Color(0xFF8D8E98),
                    ),
                    ),
                  ],
                ),

                SliderTheme(
                  data: SliderThemeData(
                    thumbColor: kbottomContainerColor,
                    overlayColor: Color(0x29EB1555),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Color(0xFF8D8E98),
                    overlayShape:
                    RoundSliderOverlayShape( overlayRadius: 30.0),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),    //thumbShape:
                  ),
                  child: Slider(value: height.toDouble(),
                    min: 120,    //cm
                    max: 200,
                    onChanged: (double newValue){
                      setState(() {
                        height=newValue.round();
                      });
                    },
                  ),
                )
              ],
            ),
             ),
            ),

            Expanded(child:
            Row(
              children: [
                Expanded(child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("WEIGHT", style: klabelTextstyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(weight.toString(), style: kBigNumberstyle,),
                          SizedBox(width: 5.0,),
                          Text("Kg", style: klabelTextstyle,)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                       CustomButton(icon: Icons.remove,
                       onPressed: (){
                         setState(() {
                           weight--;
                         });
                       },
                       ),
                       SizedBox(width: 10.0,),
                       CustomButton(icon: Icons.add,
                       onPressed: (){
                         setState(() {
                           weight++;
                         });
                       },),
                        ],
                      ),
                    ],
                  ),
                  onPress: (){},
                    colour: kboxColour
                ),
                ),
                Expanded(child: ReusableCard(
                 cardChild: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 Text("AGE", style: klabelTextstyle),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(age.toString(), style: kBigNumberstyle,),
                       ],
                   ),
                 Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                 CustomButton(
                 icon: Icons.remove,
                 onPressed: (){
                 setState(() {
                  age--;
                  });
                   },
                   ),
    SizedBox(width: 10.0,),
    CustomButton(icon: Icons.add,
    onPressed: (){
    setState(() {
    age++;
    });
    },
    ),
    ],
    ),
    ],
    ),
    onPress: (){},
    colour: kboxColour
    ),)
                ],
    ),
            ),


          bottom_button(
            text: 'CALCULATE',
            onTap: (){
              Calculator mybmi = Calculator(weight: weight, height: height);
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => ResultPage(
                  calculator: mybmi.calculate(),
                  getResult: mybmi.get_result(),
                  interpretation: mybmi.interpretation(),
                ),
                ),
              );
            },
          ),
        ],
       ),
      );
  }
}




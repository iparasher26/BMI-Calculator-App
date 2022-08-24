import 'package:flutter/material.dart';
import 'screens/InputPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screens/resultPage.dart';

void main() => runApp(bmi_calculator());

class bmi_calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          //primaryColor: Colors.limeAccent,  //0xFF141A3C
          colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xFF141A3C), secondary: Colors.deepPurple),
          scaffoldBackgroundColor: Color(0xFF080A1B),  //0xFF0B1033
      ),
      home: InputPage(),
    );
  }
}


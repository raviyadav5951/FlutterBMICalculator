import 'package:bmi_calculator/screens/input.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0121),
        scaffoldBackgroundColor: Color(0xff0A0121),
      ),
      routes: {
        '/': (context) => InputPage(),
        '/first': (context) => ResultsPage(),
      },
      initialRoute: '/',
    );
  }
}

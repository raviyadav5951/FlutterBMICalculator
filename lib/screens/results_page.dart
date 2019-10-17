import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../calculator_brain.dart';
import '../constants.dart';
import 'package:bmi_calculator/components/botttom_button.dart';

class ResultsPage extends StatelessWidget {

  // String bmiResult,interpretation,resultText;

  // ResultsPage({@required this.bmiResult,@required this.interpretation,@required this.resultText});

  @override
  Widget build(BuildContext context) {
    CalculatorBrain brain = ModalRoute.of(context).settings.arguments;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              )
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    brain.getResults(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    brain.cakculateBmi(),
                    style: kBMITextStyle,
                  ),
                  Text(
                    brain.getInterpreation(),
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'Re-Calculate',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

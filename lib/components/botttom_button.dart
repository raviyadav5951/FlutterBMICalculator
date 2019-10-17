import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  
  final String buttonTitle;
  final Function onTap;
  BottomButton({@required this.buttonTitle, @required this.onTap});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomColor,
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomHeight,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 15.0),
        child: Center(child: Text(buttonTitle,style: kLargeButtonStyle,),),
      ),
    );
  }
}
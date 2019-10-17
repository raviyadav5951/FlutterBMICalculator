import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class IconContent extends StatelessWidget {
  final IconData _iconData;
  final int _textColor;
  final String _text;
  final double _sizeOfIcon;


  IconContent(this._iconData, this._sizeOfIcon, this._text, this._textColor);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          _iconData,
          size: _sizeOfIcon,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          _text,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  static const iconSize = 80.0;
  static const fontSize = 15.0;

  final IconData iconData;
  final Color iconColor;
  final Color textColor;
  final String text;

  IconContent({
    @required this.iconData,
    @required this.iconColor,
    @required this.textColor,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      child: Column(
        children: <Widget>[
          IconButton(
            iconSize: iconSize,
            icon: Icon(
              iconData,
              color: iconColor,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}

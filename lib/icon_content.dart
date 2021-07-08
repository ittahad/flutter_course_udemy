import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
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
    return Column(
      children: <Widget>[
        IconButton(
          iconSize: kIconSize,
          icon: Icon(
            iconData,
            color: iconColor,
          ),
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}

import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              IconContent(
                iconData: FontAwesomeIcons.mars,
                iconColor: Colors.white,
                textColor: Color(0xFF8D8E98),
                text: 'MALE',
              ),
              IconContent(
                iconData: FontAwesomeIcons.venus,
                iconColor: Colors.white,
                textColor: Color(0xFF8D8E98),
                text: 'FEMALE',
              ),
            ],
          ),
          ReusableCard(),
          Row(
            children: <Widget>[
              ReusableCard(),
              ReusableCard(),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'constants.dart';

class ResultPage extends StatelessWidget {
  final String bmiResultText;
  final String bmiInfo;
  final String bmiValue;
  final Color color;

  ResultPage({this.bmiResultText, this.bmiInfo, this.bmiValue, this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.fromLTRB(
                30.0,
                10.0,
                0.0,
                10.0,
              ),
              child: Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              color: kActiveCardColor,
              margin: EdgeInsets.fromLTRB(30, 0.0, 30, 30.0),
              padding: EdgeInsets.symmetric(
                vertical: 30.0,
                horizontal: 50.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiResultText,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      color: color,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    bmiValue.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 100.0,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Normal Range:',
                    style: TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '18.5 - 25 kg/m2',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[200],
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    bmiInfo,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  RectangleButton(
                    onPress: () {},
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Text(
                  'RE-CALCULATE YOUR BMI',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RectangleButton extends StatelessWidget {
  final Function onPress;

  const RectangleButton({Key key, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(),
      fillColor: Color(0xFF111328),
      constraints: BoxConstraints.tightFor(
        height: 60.0,
        width: 220.0,
      ),
      onPressed: onPress,
      child: Text(
        'SAVE RESULT',
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w700,
          color: Colors.grey[300],
        ),
      ),
    );
  }
}

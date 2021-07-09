import 'package:bmi_calculator/bmi_brain.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

enum Gender { male, female }
enum Actions { increase, decrease }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;

  Gender selectedGender;
  int sliderValue = 170;
  int weight = 50;
  int age = 25;

  updateWeight(Actions weightAction) {
    if (weight <= 0 && weightAction == Actions.decrease) {
      return;
    } else if (weightAction == Actions.increase) {
      setState(() {
        weight += 1;
      });
    } else if (weightAction == Actions.decrease) {
      setState(() {
        weight -= 1;
      });
    }
  }

  updateAge(Actions ageAction) {
    if (age <= 0 && ageAction == Actions.decrease) {
      return;
    } else if (ageAction == Actions.increase) {
      setState(() {
        age += 1;
      });
    } else if (ageAction == Actions.decrease) {
      setState(() {
        age -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        this.selectedGender = Gender.male;
                      });
                    },
                    cardColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: IconContent(
                      iconData: FontAwesomeIcons.mars,
                      iconColor: Colors.white,
                      textColor: Color(0xFF8D8E98),
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        this.selectedGender = Gender.female;
                      });
                    },
                    cardColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: IconContent(
                      iconData: FontAwesomeIcons.venus,
                      iconColor: Colors.white,
                      textColor: Color(0xFF8D8E98),
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: ReusableCard(
              cardColor: kInactiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        '$sliderValue',
                        style: kLabelTextStyleW900,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x29EB1555),
                      trackHeight: 2.0,
                    ),
                    child: Slider(
                      value: sliderValue.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double val) {
                        setState(() {
                          sliderValue = val.toInt();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: kInactiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kLabelTextStyleW900,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                updateWeight(Actions.increase);
                              },
                              onLongPress: () {},
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            RoundIconButton(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                updateWeight(Actions.decrease);
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: kInactiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kLabelTextStyleW900,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                updateAge(Actions.increase);
                              },
                              onLongPress: () {},
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            RoundIconButton(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                updateAge(Actions.decrease);
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                if (selectedGender == null) return;

                BMIBrain brain = BMIBrain(
                  height: sliderValue,
                  weight: weight,
                );

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => ResultPage(
                      bmiValue: brain.calculateBMI(),
                      bmiInfo: brain.getInterpretation(),
                      bmiResultText: brain.getResult(),
                      color: brain.getColor(),
                    ),
                  ),
                );
              },
              child: Container(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 16.0,
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

class RoundIconButton extends StatelessWidget {
  final IconData iconData;
  final Function onPress;
  final Function onLongPress;

  RoundIconButton({this.iconData, this.onPress, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        height: 45.0,
        width: 45.0,
      ),
      onPressed: onPress,
      onLongPress: onLongPress,
      child: Icon(iconData),
    );
  }
}

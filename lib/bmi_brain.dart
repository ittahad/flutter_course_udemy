import 'dart:math';

import 'package:flutter/material.dart';

class BMIBrain {
  int height;
  int weight;
  double _bmi;

  BMIBrain({this.height, this.weight});

  String calculateBMI() {
    double heightInMeters = this.height / 100.0;
    _bmi = this.weight / pow(heightInMeters, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  Color getColor() {
    if (_bmi >= 25) {
      return Colors.red[900];
    } else if (_bmi >= 18.5) {
      return Colors.green;
    } else {
      return Colors.orangeAccent;
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. Wou can eat a bit more.';
    }
  }
}

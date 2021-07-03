import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzler/questions.dart';
import 'package:quizzler/quiz.dart';

class QuizBrain {
  List<Widget> _scoreKeeper = [];
  int _qCounter = 0;

  addCorrectTick() {
    _scoreKeeper.add(Icon(
      Icons.check,
      color: Colors.greenAccent,
    ));
  }

  addIncorrectTick() {
    _scoreKeeper.add(Icon(
      Icons.close,
      color: Colors.red,
    ));
  }

  int getCurrentQuestionPos() => _qCounter;
  int setCurrentQuestionPos(val) => _qCounter = val;
  int nextQuestion() => _qCounter++;
  void emptySocre() => _scoreKeeper = [];
  List<Widget> getScores() {
    final List<Widget> score = _scoreKeeper.toList();
    return score;
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzler/questions.dart';
import 'package:quizzler/quiz.dart';

class QuizBrain {
  List<Widget> _scoreKeeper = [];
  int _qCounter = 0;
  int _emptyCounter = 0;

  addCorrectTick(pos) {
    _scoreKeeper[pos] = Icon(
      Icons.check,
      color: Colors.greenAccent,
    );
  }

  addIncorrectTick(pos) {
    _scoreKeeper[pos] = Icon(
      Icons.close,
      color: Colors.red,
    );
  }

  populateEmpty() {
    _scoreKeeper = [];
    for (int i = 0; i < Questions().getQuestionsCount(); i++) {
      _scoreKeeper.add(Icon(
        Icons.arrow_right,
        color: Colors.grey[850],
      ));
    }
    return this;
  }

  int getCurrentQuestionPos() => _qCounter;
  int setCurrentQuestionPos(val) => _qCounter = val;
  int nextQuestion() => _qCounter++;
  void emptySocre() => populateEmpty();
  List<Widget> getScores() {
    final List<Widget> score = _scoreKeeper.toList();
    return score;
  }
}

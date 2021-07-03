import 'package:quizzler/quiz.dart';

class Questions {
  List<Quiz> _questions = [
    Quiz(
      'Do you have a nightmare travel story?',
      true,
    ),
    Quiz(
      "Is there anyone that you're wondering about and if they're okay?",
      true,
    ),
    Quiz(
      'Did you ever have a huge rival? Was the rivalry friendly or fierce?',
      true,
    ),
    Quiz(
      "Do you have any apps on your phone that you've never used?",
      true,
    ),
    Quiz(
      'Do you consider yourself an introvert or an extrovert?',
      true,
    ),
    Quiz(
      'Have you evet taken a long shot that worked out?',
      true,
    ),
    Quiz(
      'Do you have an app on your phone that you use even though you hate it?',
      true,
    ),
    Quiz(
      'Have you ever done something embarrassing around a former crush?',
      true,
    ),
    Quiz(
      'Did you ever have a huge rival? Was the rivalry friendly or fierce?',
      true,
    ),
    Quiz(
      'Thanks for taking the quiz. Did you enjoy?',
      true,
    ),
  ];

  String getQuestion(idx) => this._questions[idx].quiz;

  bool getQuestionAns(idx) => this._questions[idx].ans;

  int getQuestionsCount() => this._questions.length;
}

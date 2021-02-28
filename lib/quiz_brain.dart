import 'package:quiz_app/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'Lord Tyrannus was trained by Yoda.', a: true),
    Question(q: 'Bounty Hunter\'s only serve the Empire', a: false),
    Question(q: 'Obi-Wan is Ben Kenobi', a: true),
    Question(q: "Leia is Han Solo's sister", a: false),
    Question(q: "Luke is Leia's sister", a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void reset() {
    _questionNumber = 0;
  }
}

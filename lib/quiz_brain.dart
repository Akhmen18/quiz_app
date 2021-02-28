import 'package:quiz_app/question.dart';

class QuizBrain {
  List<Question> _questionBank = [
    Question(q: 'Lord Tyrannus was trained by Yoda.', a: true),
    Question(q: 'Bounty Hunter\'s only serve the Empire', a: false),
    Question(q: 'Obi-Wan is Ben Kenobi', a: true),
    Question(q: "Leia is Han Solo's sister", a: false),
    Question(q: "Luke is Leia's sister", a: false),
  ];

  String getQuestionText(int questionNumber) {
    return _questionBank[questionNumber].questionText;
  }

  bool getQuestionAnswer(int questionNumber) {
    return _questionBank[questionNumber].questionAnswer;
  }
}

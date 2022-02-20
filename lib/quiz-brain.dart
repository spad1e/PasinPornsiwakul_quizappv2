import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank=[
    Question(q: "Don't look on your keyboard!\nThe letter H is between the letter G and the letter J on the qwerty keyboard", a: true),
    Question(q: "Don't look on your keyboard!\nThe letter S and letter K are 6 characters apart on the qwerty keyboard.", a: true),
    Question(q: "Don't look on your keyboard!\nLetter C and B are next to each other on the qwerty keyboard.", a: false),
    Question(q: "Don't look on your keyboard!\nIf we hold shift and type 4 on the qwerty keyboard we'll get #", a: false),
    Question(q:  "Don't look on your keyboard!\n. is to the left of , on the qwerty keyboard", a: false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    return _questionNumber >= _questionBank.length-1;
  }

  void reset() {
    _questionNumber = 0;
  }

}
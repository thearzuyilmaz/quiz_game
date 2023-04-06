import 'question.dart';

class QuizBrain {

  // _ işareti koyarak "privat"e property yaptık, only QuizBrain has
  // access to this
  int _questionNumber = 0;

  // Sadece QuizBrain contente erişebilsin diye _ işareti koyduk önüne yoksa
  // main.dart dosyasında cevapları değiştirebilirdik ki bunu istemeyiz private olsun isteriz;

  List<Question> _questionBank = [

    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),

  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    }
  }

  // Soruya ulaşabilsin diye method tanımlıyoruz çünkü private yaptık soruları

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished () {
    if (_questionNumber >= _questionBank.length - 1){
      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset(){
    _questionNumber = 0;
  }

}


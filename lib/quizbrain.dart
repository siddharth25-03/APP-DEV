import 'question.dart';

class Quizbrain{
  int questionnumber=0;
  List<Question> _qb=[
    Question('The Earth is the largest planet in the solar system.',false),
    Question('Oxygen is the most abundant element in the Earth\'s atmosphere.',true),
    Question('The Great Wall of China can be seen from space with the naked eye.',false),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question('No piece of square dry paper can be folded in half more than 7 times.', false),

  ];

  int alert(){
    if(questionnumber==_qb.length-1){
      return 1;
    }
    else{
      return 0;
    }
  }
  String getquestionname(){
    return _qb[questionnumber].question;
  }
  bool getquestionans(){
    return _qb[questionnumber].answer;
  }

}
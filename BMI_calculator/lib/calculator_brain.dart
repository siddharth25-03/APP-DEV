import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({required this.weight,required this.height});
  int weight;
  int height;
  double ans=0;
  String calcbmi(){
    ans= weight/pow(height/100,2);
    return ans.toStringAsFixed(1);
  }

  String getresult() {
    calcbmi();
    print('answer is $ans');
    if (ans >= 25) {
      return 'Overweight';
    }
    else if (ans >= 18.5) {
      return 'Normal';
    }
    else {
      return 'Underweight';
    }
  }
  String getinterpretatiton(){
    calcbmi();
    if (ans >= 25) {
      return 'You are fat. You need to exercise';
    }
    else if (ans >= 18.5) {
      return 'You are normal congratulations';
    }
    else {
      return 'You are thin. Please eat some more';
    }
  }
}

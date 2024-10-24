import 'dart:math';

class CalculatorBrain {
   CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
 late double _bmi;

  

  String Calculatebmi() {
     _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1); // Return the BMI as a formatted string.
  }

String getResult(){
  if(_bmi>=25){
    return 'overweight';

  }else if
    (_bmi>18.5){
    return 'normal';
    }else{
      return 'underweight';
    }
    
}
String getInterptation(){
   if(_bmi>=25){
    return 'you have more weight than normal body.do more exercise';

  }else if
    (_bmi>18.5){
    return 'you have normal weight.good for your hardwork';
    }else{
      return 'you have less weight than normal body .eat more';
    }
}
}
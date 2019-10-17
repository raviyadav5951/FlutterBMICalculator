
import 'dart:math';
 
class CalculatorBrain
{

    final int weight;
    final int height;
    double _bmi;

   CalculatorBrain({this.weight,this.height});

    String cakculateBmi()
    {
      _bmi=weight/pow(height/100,2);
       return  _bmi.toStringAsFixed(1);

    }


  String getResults()
  {
      if(_bmi>=25)
      {
        return 'Overweight';
      }
      else if(_bmi>18.5)
      {
        return'Normal';
      }
      else{
        return 'Underweight';
      }
  }


  String getInterpreation()
  {
       if(_bmi>=25)
      {
        return 'You have higher body weight than normal, Excercis more.';
      }
      else if(_bmi>=18.5)
      {
        return'You have Normal body weight.';
      }
      else{
        return 'You have lower body weight, eat more.';
      }
  }
 
}
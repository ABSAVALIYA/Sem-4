import 'dart:io';
import 'dart:math';

void main() {
  print("Enter your weight in pounds: ");
  int pd = int.parse(stdin.readLineSync()!);

  print("Enter your height in inches: ");
  int ich = int.parse(stdin.readLineSync()!);

  var kg = pd * 0.45359237;
  var mtr = ich * 0.254;
  var bmi = kg*100 / pow(mtr, 2);

  print("BMI is $bmi");
}
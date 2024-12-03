import 'dart:io';

void main() {
  print('Enter number 1: ');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Enter number 2: ');
  int num2 = int.parse(stdin.readLineSync()!);
  
  print('Enter + for addition, - for substraction, * for multiplication, / for division: ');
  var op = stdin.readLineSync()!;
  
  switch(op) {
    case '+':
      print('Addition = ${num1+num2}');
      break;
    case '-':
      print('Subtraction = ${num1-num2}');
      break;
    case '*':
      print('Multiplication = ${num1*num2}');
      break;
    case '/':
      if(num2 == 0) {
        print('Invalid input');
      }
      else {
        print('Addition = ${num1/num2}');
      }
      break;
    default:
      print('Invalid operator');
  }
}
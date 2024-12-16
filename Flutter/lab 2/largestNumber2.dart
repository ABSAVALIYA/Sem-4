import 'dart:io';

void main() {
  print('Enter number 1: ');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Enter number 2: ');
  int num2 = int.parse(stdin.readLineSync()!);
  print('Enter number 3: ');
  int num3 = int.parse(stdin.readLineSync()!);
  num1>num2 ? (num1>num3 ? print('Largest Number is $num1'): print('Largest Number is $num3')) : (num2>num3 ? print('Largest Number is $num2'): print('Largest Number is $num3'));
}
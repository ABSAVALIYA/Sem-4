import 'dart:io';

void main() {
  print('Enter number 1: ');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Enter number 2: ');
  int num2 = int.parse(stdin.readLineSync()!);
  print('Enter number 3: ');
  int num3 = int.parse(stdin.readLineSync()!);

  if(num1 > num2) {
    if(num1 > num3) {
      print('Largest number is $num1');
    }
    else {
      print('Largest number is $num3');
    }
  }
  else {
    if(num2 > num3) {
      print('Largest number is $num2');
    }
    else {
      print('Largest number is $num3');
    }
  }
}
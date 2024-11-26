import 'dart:io';

void main() {
  print('Enter number 1: ');
  int a = int.parse(stdin.readLineSync()!);

  print('Enter number 2: ');
  int b = int.parse(stdin.readLineSync()!);

  print('Addition of two numbers is ${a+b}');
}
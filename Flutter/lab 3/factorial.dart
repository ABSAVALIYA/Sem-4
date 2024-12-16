import 'dart:io';

void main() {
  print('Enter a number to find its factorial: ');
  int num = int.parse(stdin.readLineSync()!);
  int fac = 1;
  for(int i=1; i<=num; i++) {
    fac *= i;
  }
  print('Factorial of $num is $fac');
}
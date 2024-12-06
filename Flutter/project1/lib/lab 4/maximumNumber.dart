import 'dart:io';

void main() {
  stdout.write('Enter first number: ');
  int a = int.parse(stdin.readLineSync()!);
  stdout.write('Enter second number: ');
  int b = int.parse(stdin.readLineSync()!);
  print('${max(a, b)} is the maximum number');
}

int max(int a, int b) {
  return a>=b ? a : b;
}
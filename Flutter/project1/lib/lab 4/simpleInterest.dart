import 'dart:io';

void main() {
  print('Enter principal amount: ');
  int p = int.parse(stdin.readLineSync()!);
  print('Enter rate of interest: ');
  int r = int.parse(stdin.readLineSync()!);
  print('Enter time in years: ');
  int t = int.parse(stdin.readLineSync()!);
  print('Simple Interest = ${simpleInterest(p, r, t)}');
}

double simpleInterest(int p, int r, int t) {
  return p*r*t/100;
}
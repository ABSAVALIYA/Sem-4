import 'dart:io';

void main() {
  print('Enter temperature in Fahrenheit: ');
  double fh = double.parse(stdin.readLineSync()!);

  double cl = (fh - 32) * 5/9;

  print("Temperature in Celcius is $cl");
}
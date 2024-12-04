import 'dart:io';

void main() {
  print('Enter hours: ');
  int hrs = int.parse(stdin.readLineSync()!);
  print('Enter minutes: ');
  int min = int.parse(stdin.readLineSync()!);
  int minuteAngle = 6 * min;
  double hourAngle = 30*hrs+0.5*min;
  double angleBetween = (hourAngle - minuteAngle).abs();
  angleBetween > 180 ? angleBetween = 360-angleBetween: angleBetween = angleBetween;
  print(angleBetween);
}
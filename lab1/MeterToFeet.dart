import 'dart:io';

void main() {
  print("Enter height in meters: ");
  int mtr = int.parse(stdin.readLineSync()!);

  double feet = mtr * 3.28;

  print("Height in Feets is $feet");
}
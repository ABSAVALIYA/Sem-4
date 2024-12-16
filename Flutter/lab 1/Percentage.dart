import 'dart:io';

void main() {
  print("Enter marks of subject 1: ");
  int s1 = int.parse(stdin.readLineSync()!);

  print("Enter marks of subject 2: ");
  int s2 = int.parse(stdin.readLineSync()!);

  print("Enter marks of subject 3: ");
  int s3 = int.parse(stdin.readLineSync()!);

  print("Enter marks of subject 4: ");
  int s4 = int.parse(stdin.readLineSync()!);

  print("Enter marks of subject 5: ");
  int s5 = int.parse(stdin.readLineSync()!);

  var pct = (s1+s2+s3+s4+s5)*100/500;

  print("$pct%");
}
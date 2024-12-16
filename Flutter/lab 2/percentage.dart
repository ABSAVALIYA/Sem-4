import 'dart:io';

void main() {
  print('Enter marks of subject 1: ');
  int sub1 = int.parse(stdin.readLineSync()!);
  print('Enter marks of subject 1: ');
  int sub2 = int.parse(stdin.readLineSync()!);
  print('Enter marks of subject 2: ');
  int sub3 = int.parse(stdin.readLineSync()!);
  print('Enter marks of subject 4: ');
  int sub4 = int.parse(stdin.readLineSync()!);
  print('Enter marks of subject 5: ');
  int sub5 = int.parse(stdin.readLineSync()!);
  int marks = sub1 + sub2 + sub3 + sub4 + sub5;
  double pct = marks*100/500;
  if(pct < 35) {
    print('Fail');
  }
  else if(pct >=35 && pct <45) {
    print('Pass');
  }
  else if(pct >=45 && pct < 60) {
    print('Second class');
  }
  else if(pct >=60 && pct <=70) {
    print('First class');
  }
  else {
    print('Distinction');
  }
}
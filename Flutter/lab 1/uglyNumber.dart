import 'dart:io';

void main() {
  print('Enter a number: ');
  int n = int.parse(stdin.readLineSync()!);
  if(n == 1) {
    print('$n is an ugly number');
    return;
  }
  if(n == 0) {
    print('$n is not an ugly number');
    return;
  }
  int a = n;
  while(n != 1 && n != -1) {
    if(n % 2 == 0) {
      n ~/= 2;
    }
    else if(n % 3 == 0) {
      n ~/= 3;
    }
    else if(n % 5 == 0) {
      n ~/= 5;
    }
    else {
      print('$a is not an ugly number');
      return;
    }
  }
  print('$a is an ugly number');
}
import 'dart:io';

void main() {
  print('Enter a number: ');
  int num = int.parse(stdin.readLineSync()!);
  int rev = 0;
  while(num != 0) {
    int rem = num % 10;
    rev = rev*10 + rem;
    num ~/= 10;
  }
  print(rev);
}
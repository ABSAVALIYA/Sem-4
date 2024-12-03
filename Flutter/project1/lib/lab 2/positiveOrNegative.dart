import 'dart:io';

void main() {
  print('Enter a number: ');
  int num = int.parse(stdin.readLineSync()!);
  if(num < 0) {
    print('You entered a negative number');
  }
  else if(num == 0) {
    print('You entered zero');
  }
  else {
    print('You entered a positive number');
  }
}
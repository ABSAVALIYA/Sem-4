import 'dart:io';

void main() {
  int num = 0, positiveSum = 0, negativeSum = 0;
  do {
    print('Enter a number: ');
    num = int.parse(stdin.readLineSync()!);
    if(num > 0) {
      if(num % 2 == 0) {
        positiveSum += num;
      }
    }
    else if(num < 0) {
      if(num % 2 == 1) {
        negativeSum += num;
      }
    }
  } while(num != 0);
  print('Sum of positive even numbers is $positiveSum');
  print('And sum of negative odd numbers is $negativeSum');
}
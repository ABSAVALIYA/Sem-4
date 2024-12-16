import 'dart:io';
import 'dart:math';

void main() {
  print('Enter a number: ');
  int num = int.parse(stdin.readLineSync()!);

  for(int i=2; i<=sqrt(num); i++) {
    if(num % i == 0) {
      print('Number you entered is not prime');
      return;
    }
  }
  print('Number you entered is prime');
}
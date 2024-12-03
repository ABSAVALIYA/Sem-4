import 'dart:io';
import 'dart:math';

void main() {
  print('Enter starting number: ');
  int start = int.parse(stdin.readLineSync()!);
  print('Enter ending number: ');
  int end = int.parse(stdin.readLineSync()!);
  print('Prime numbers between $start and $end are: ');
  for(int i=start; i<=end; i++) {
    bool isPrime = true;
    for(int j=2; j<=sqrt(i); j++) {
      if(i%j == 0) {
        isPrime = false;
        break;
      }
    }
    if(isPrime) {
      stdout.write('$i, ');
    }
  }
}
import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Enter a number: ');
  int n = int.parse(stdin.readLineSync()!);
  int isPrime = check(n);
  if(isPrime == 1) {
    print('$n is a prime number');
  }
  else {
    print('$n is not a prime number');
  }
}

int check(int n) {
  for(int i=2; i<=sqrt(n); i++) {
    if(n % i == 0) {
      return 0;
    }
  }
  return 1;
}
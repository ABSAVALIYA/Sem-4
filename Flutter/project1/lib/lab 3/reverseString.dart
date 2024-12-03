import 'dart:io';

void main() {
  print('Enter a string: ');
  String str = stdin.readLineSync()!;
  String rev = '';
  for(int i=str.length-1; i>=0; i--) {
    rev += str[i];
  }
  print(rev);
}
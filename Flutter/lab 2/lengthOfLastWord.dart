import 'dart:io';

void main() {
  print('Enter a string: ');
  String str = stdin.readLineSync()!;
  print('Length of last word is ${str.trim().split(' ').last.length}');
}
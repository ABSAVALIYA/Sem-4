import 'dart:io';

void main() {
  stdout.write('Enter an integer string: ');
  String num = stdin.readLineSync()!;
  String res = '';
  for (int i = num.length - 1; i >= 0; i--) {
    if (int.parse(num[i]) % 2 != 0) {
      res = num.substring(0, i + 1);
      break;
    }
  }
  print(res);
}
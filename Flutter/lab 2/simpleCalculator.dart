import 'dart:io';

void main() {
  print('Enter a space-separated expression:');
  String str = stdin.readLineSync()!;
  List<String> list = str.split(' ');

  while (list.length > 1) {
    if (list.contains('/')) {
      int op = list.indexOf('/');
      int res = int.parse(list[op - 1]) ~/ int.parse(list[op + 1]);
      list.replaceRange(op - 1, op + 2, [res.toString()]);
    } else if (list.contains('*')) {
      int op = list.indexOf('*');
      int res = int.parse(list[op - 1]) * int.parse(list[op + 1]);
      list.replaceRange(op - 1, op + 2, [res.toString()]);
    } else if (list.contains('+')) {
      int op = list.indexOf('+');
      int res = int.parse(list[op - 1]) + int.parse(list[op + 1]);
      list.replaceRange(op - 1, op + 2, [res.toString()]);
    } else if (list.contains('-')) {
      int op = list.indexOf('-');
      int res = int.parse(list[op - 1]) - int.parse(list[op + 1]);
      list.replaceRange(op - 1, op + 2, [res.toString()]);
    }
  }

  print('Result: ${list.first}');
}

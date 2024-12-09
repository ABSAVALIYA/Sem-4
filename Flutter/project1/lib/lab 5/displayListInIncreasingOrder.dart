import 'dart:io';

void main() {
  List<int> list = [];
  for(int i=1; i<=5; i++) {
    stdout.write('Enter element $i: ');
    int num = int.parse(stdin.readLineSync()!);
    list.add(num);
  }
  list.sort();
  print('List in increasing order: ');
  print(list);
}
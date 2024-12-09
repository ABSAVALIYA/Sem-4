import 'dart:io';

void main() {
  stdout.write('How many elements do you want to enter in list1: ');
  int n = int.parse(stdin.readLineSync()!);
  List<int> list1 = [];
  for(int i=1; i<=n; i++) {
    stdout.write('Enter element $i in list1: ');
    int num = int.parse(stdin.readLineSync()!);
    list1.add(num);
  }
  stdout.write('How many elements do you want to enter in list2: ');
  n = int.parse(stdin.readLineSync()!);
  List<int> list2 = [];
  for(int i=1; i<=n; i++) {
    stdout.write('Enter element $i in list2: ');
    int num = int.parse(stdin.readLineSync()!);
    list2.add(num);
  }
  print('Elements in list1: ');
  print(list1);
  print('Elements in list2: ');
  print(list2);
  List<int> res = [];
  for(int i=0; i<list1.length; i++) {
    if(list2.contains(list1[i])) {
      res.add(list1[i]);
    }
  }
  print('Elements common in both lists are: ');
  print(res);
}
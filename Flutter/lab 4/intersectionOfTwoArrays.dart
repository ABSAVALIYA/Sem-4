import 'dart:io';

void main() {
  stdout.write('How many elements do you want to enter in first array: ');
  int n = int.parse(stdin.readLineSync()!);
  List<int> list1 = [];
  for(int i=1; i<=n; i++) {
    stdout.write('Enter element $i: ');
    int num = int.parse(stdin.readLineSync()!);
    list1.add(num);
  }
  stdout.write('How many elements do you want to enter in second array: ');
  n = int.parse(stdin.readLineSync()!);
  List<int> list2 = [];
  for(int i=1; i<=n; i++) {
    stdout.write('Enter element $i: ');
    int num = int.parse(stdin.readLineSync()!);
    list2.add(num);
  }
  print(list1);
  print(list2);
  print('Intersection of two arrays is: ');
  print(intersection(list1, list2));
}

List<int> intersection(List<int> list1, List<int> list2) {
  List<int> res = [];
  for(int i=0; i<list1.length; i++) {
    if(list2.indexOf(list1[i]) != -1) {
      List<int> temp = [list1[i]];
      int idx = list2.indexOf(list1[i]);
      for(int k=i+1; k<list1.length; k++) {
        if(list2.indexOf(list1[k], idx) != -1) {
          temp.add(list1[k]);
          idx++;
        }
        else {
          break;
        }
      }
      if(temp.length > res.length) {
        res..clear()..addAll(temp);
      }
    }
  }
  return res;
}
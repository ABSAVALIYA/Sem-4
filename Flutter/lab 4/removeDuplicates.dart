import 'dart:io';

void main() {
  stdout.write('How many elements do you want to enter in the array: ');
  int n = int.parse(stdin.readLineSync()!);
  List<int> list = [];
  for(int i=1; i<=n; i++) {
    stdout.write('Enter element $i: ');
    int num = int.parse(stdin.readLineSync()!);
    list.add(num);
  }
  print('Number of unique elements in the array are ${removeDuplicates(list)}');
  print(list);
}

int removeDuplicates(List<int> list) {
  int uniqueIndex = 0;
  for(int i=1; i<list.length; i++) {
    if(list[uniqueIndex] != list[i]) {
      uniqueIndex++;
      list[uniqueIndex] = list[i];
    }
  }
  return uniqueIndex + 1;
}
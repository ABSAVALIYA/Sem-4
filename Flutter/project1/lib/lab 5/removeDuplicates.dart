import 'dart:io';

void main() {
  stdout.write('Enter the size of array: ');
  int n = int.parse(stdin.readLineSync()!);
  List<int> list = [];
  for(int i=1; i<=n; i++) {
    stdout.write('Enter element $i: ');
    int num = int.parse(stdin.readLineSync()!);
    list.add(num);
  }
  Map<int, bool> seen = {};
  List<int> unique = [];
  for(int num in list) {
    if(!seen.containsKey(num)) {
      seen[num] = true;
      unique.add(num);
    }
  }
  print(unique);
}
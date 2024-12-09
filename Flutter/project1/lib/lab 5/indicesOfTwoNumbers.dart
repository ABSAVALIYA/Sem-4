import 'dart:io';

void main() {
  stdout.write('Enter size of array: ');
  int n = int.parse(stdin.readLineSync()!);
  List<int> arr = [];
  for(int i=1; i<=n; i++) {
    stdout.write('Enter element $i: ');
    int num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }
  stdout.write('Enter target value: ');
  int target = int.parse(stdin.readLineSync()!);
  List<int> res = [];
  for(int i=0; i<arr.length-1; i++) {
    for(int j=i+1; j<arr.length; j++) {
      if(arr[i] + arr[j] == target) {
        res.add(i);
        res.add(j);
        break;
      }
    }
  }
  print(res);
}
import 'dart:io';

void main() {
  stdout.write('How many elements do you want to enter in the array: ');
  int n = int.parse(stdin.readLineSync()!);
  List<int> arr = [];
  for(int i=1; i<=n; i++) {
    stdout.write('Enter element $i: ');
    int num = int.parse(stdin.readLineSync()!);
    arr.add(num);
  }
  count(arr);
}

void count(List<int> arr) {
  int odd=0, even=0;
  for(int i=0; i<arr.length; i++) {
    if(arr[i]%2 == 0) even++;
    else odd++;
  }
  print('Number of odd elements in the array are $odd');
  print('And number of even elements are $even');
}
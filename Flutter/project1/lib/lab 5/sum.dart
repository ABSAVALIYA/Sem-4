import 'dart:io';

void main() {
  stdout.write('Enter size of array: ');
  int n = int.parse(stdin.readLineSync()!);
  List<int> arr = [];
  int sum = 0;
  for(int i=1; i<=n; i++) {
    stdout.write('Enter element $i: ');
    int num = int.parse(stdin.readLineSync()!);
    arr.add(num);
    if(num % 3 == 0 || num % 5 == 0) {
      sum += num;
    }
  }
  print('Sum of elements which are divisible by either 3 or 5 is $sum');
}
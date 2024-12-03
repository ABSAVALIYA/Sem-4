import 'dart:io';

void main() {
  List<int> numbers = [];
  print('How you many numbers do you want to enter in the array: ');
  int n = int.parse(stdin.readLineSync()!);
  for(int i=1; i<=n; i++) {
    print('Enter element number $i in the array: ');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  List<int> res = [];
  int ans = numbers[0];
  for(int i=0; i<numbers.length-1; i++) {
    List<int> temp = [numbers[i]];
    int sum = numbers[i];
    for(int j=i+1; j<numbers.length; j++) {
      if(sum + numbers[j] > sum) {
        temp.add(numbers[j]);
        sum += numbers[j];
      }
      else {
        break;
      }
    }
    if(sum > ans) {
      ans = sum;
      res = temp;
    }
  }
  print('Subarray = $res and Sum = $ans');
}
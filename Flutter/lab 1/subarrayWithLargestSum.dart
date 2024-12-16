import 'dart:io';

void main() {
  List<int> numbers = [];
  print('How many numbers do you want to enter in the array: ');
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    print('Enter element number $i in the array: ');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  int maxSum = numbers[0];
  int currentSum = numbers[0];
  List<int> res = [numbers[0]];
  List<int> temp = [numbers[0]];

  for (int i = 1; i < numbers.length; i++) {
    if (currentSum + numbers[i] > numbers[i]) {
      currentSum += numbers[i];
      temp.add(numbers[i]);
    } else {
      currentSum = numbers[i];
      temp = [numbers[i]];
    }

    if (currentSum > maxSum) {
      maxSum = currentSum;
      res = List.from(temp);
    }
  }

  print('Subarray = $res and Sum = $maxSum');
}

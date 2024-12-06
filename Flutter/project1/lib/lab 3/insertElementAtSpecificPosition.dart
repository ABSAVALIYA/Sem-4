import 'dart:io';

void main() {
  List<int> list = [];
  while(true) {
    print('Enter 1 to add element in the array or any other number to break the loop: ');
    int flag = int.parse(stdin.readLineSync()!);
    if(flag == 1) {
      print('Enter element: ');
      int num = int.parse(stdin.readLineSync()!);
      list.add(num);
    }
    else {
      break;
    }
  }
  print('Array before entering element at specific position: ');
  print(list);
  print('Enter element to enter in the array: ');
  int num = int.parse(stdin.readLineSync()!);
  print('Enter the position to enter the element: ');
  int pos = int.parse(stdin.readLineSync()!);
  list.insert(2, num);
  list[pos] = num;
  print(list);
}
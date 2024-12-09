import 'dart:io';

void main() {
  Map<String, Friend> dic = {};
  int n = 0;
  do {
    stdout.write('1. Add, 2. Search, 3. display, -1. Exit: ');
    n = int.parse(stdin.readLineSync()!);
    switch (n) {
      case 1:
        stdout.write('Enter name: ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter number: ');
        String number = stdin.readLineSync()!;
        stdout.write('Enter age: ');
        int age = int.parse(stdin.readLineSync()!);
        Friend fr = new Friend(number, age);
        dic[name] = fr;
        break;
      case 2:
        stdout.write('Enter name: ');
        String name = stdin.readLineSync()!;
        if(dic.containsKey(name)) {
          Friend fr = dic[name] as Friend;
          print(fr.number);
          print(fr.age);
        }
        else {
          print('Name doest not exist');
        }
        break;
      case 3:
        dic.forEach((name, fr) {
          Friend friend = fr as Friend;
          print(name);
          print(friend.number);
          print(friend.age);
        });
        break;
      default:
        if(n != -1) {
          print('Invalid input');
        }
    }
  } while(n != -1);
}

class Friend {
  String number = '';
  int age = 0;
  Friend(String number, int age) {
    this.number = number;
    this.age = age;
  }
}
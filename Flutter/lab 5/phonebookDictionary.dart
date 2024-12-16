import 'dart:io';

void main() {
  Map<String, String> dic = {};
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
        dic[name] = number;
        break;
      case 2:
        stdout.write('Enter name: ');
        String name = stdin.readLineSync()!;
        if(dic.containsKey(name)) {
          print(dic[name]);
        }
        else {
          print('Name doest not exist');
        }
        break;
      case 3:
        print(dic);
        break;
      default:
        if(n != -1) {
          print('Invalid input');
        }
    }
  } while(n != -1);
}
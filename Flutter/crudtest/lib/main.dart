import 'dart:io';

import 'package:crudtest/user/user.dart';

void main() {
  User user = User();
  int choice;
  do {
    stdout.write('1. add, 2.update, 3. delete, 4. search, 5. display, -1. exit: ');
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        stdout.write('Enter name: ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter email: ');
        String email = stdin.readLineSync()!;
        stdout.write('Enter age: ');
        int age = int.parse(stdin.readLineSync()!);
        stdout.write('Enter gender: ');
        String gender = stdin.readLineSync()!;
        user.addUser(name: name, email: email, age: age, gender: gender);
        break;
      case 2:
        stdout.write('Enter name: ');
        String name = stdin.readLineSync()!;
        stdout.write('Enter email: ');
        String email = stdin.readLineSync()!;
        stdout.write('Enter age: ');
        int age = int.parse(stdin.readLineSync()!);
        stdout.write('Enter gender: ');
        String gender = stdin.readLineSync()!;
        stdout.write('Enter index: ');
        int id = int.parse(stdin.readLineSync()!);
        user.updateUser(name: name, email: email, age: age, gender: gender, id: id);
        break;
      case 3:
        stdout.write('Enter index: ');
        int id = int.parse(stdin.readLineSync()!);
        user.deleteUser(id: id);
        break;
      case 4:
        stdout.write('Enter details: ');
        String searchDetails = stdin.readLineSync()!;
        Map<String, dynamic>? map = user.searchUser(searchDetail: searchDetails);
        print(map);
        break;
      case 5:
        List<Map<String, dynamic>> list =  user.displayList();
        print(list);
        break;
      default:
        if(choice != -1) {
          print('Invalid input');
        }
    }
  } while(choice != -1);
}
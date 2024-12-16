import 'package:crudtest/utils/constants.dart';

class User {
  List<Map<String, dynamic>> userList = [];

  void addUser({required name, required email, required age, required gender}) {
    Map<String, dynamic> map = {};
    map[NAME] = name;
    map[EMAIL] = email;
    map[AGE] = age;
    map[GENDER] = gender;
    userList.add(map);
  }

  void updateUser({required name, required email, required age, required gender,required int id}) {
    Map<String, dynamic> map = {};
    map[NAME] = name;
    map[EMAIL] = email;
    map[AGE] = age;
    map[GENDER] = gender;
    try {
      userList[id] = map;
    } catch (ex) {
      print('User does not exist');
    }
  }

  void deleteUser({required id}) {
    try {
      userList.removeAt(id);
    } catch (ex) {
      print('User does not exist');
    }
  }

  List<Map<String, dynamic>> displayList() {
    return userList;
  }

  Map<String, dynamic>? searchUser({required searchDetail}) {
    for(var element in userList) {
      if(element[NAME].toString().toLowerCase().contains(searchDetail.toString().toLowerCase())
      || element[EMAIL].toString().toLowerCase().contains(searchDetail.toString().toLowerCase())
      || element[AGE].toString().toLowerCase().contains(searchDetail.toString().toLowerCase())
      || element[GENDER].toString().toLowerCase().contains(searchDetail.toString().toLowerCase())) {
        return element;
      }
    }
  }
}
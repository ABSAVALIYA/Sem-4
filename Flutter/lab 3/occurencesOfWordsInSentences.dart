import 'dart:io';

void main() {
  print('Enter a string: ');
  String str = stdin.readLineSync()!;
  List<String> list = str.toLowerCase().split(' ');
  Map<String, int> map = {};
  for(int i=0; i<list.length; i++) {
    if(map.containsKey(list[i])) {
      map.update(list[i], (value) => value + 1);
    }
    else {
      map[list[i]] = 1;
    }
  }
  print(map);
}
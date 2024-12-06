import 'dart:io';

void main() {
  stdout.write('How many names do you want to enter: ');
  int n = int.parse(stdin.readLineSync()!);
  List<String> names = [];
  List<int> height = [];
  for(int i=1; i<=n; i++) {
    stdout.write('Enter name of person $i: ');
    String name = stdin.readLineSync()!;
    stdout.write('Enter height of person $i: ');
    int h = int.parse(stdin.readLineSync()!);
    names.add(name);
    height.add(h);
  }
  print('Names before sorting: ');
  print(names);
  print('Corresponding Height before sorting: ');
  print(height);
  sort(names, height);
  print('Names after sorting in descending order based on height: ');
  print(names);
  print('Corresponding heights: ');
  print(height);
}

void sort(List<String> names, List<int> height) {
  for(int i=0; i<names.length-1; i++) {
    int maxHeight = height[i];
    int maxIdx = i;
    String name = names[i];
    for(int j=i+1; j<names.length; j++) {
      if(height[j] > maxHeight) {
        maxHeight = height[j];
        maxIdx = j;
        name = names[j];
      }
    }
    if(maxIdx != i) {
      height[maxIdx] = height[i];
      height[i] = maxHeight;
      names[maxIdx] = names[i];
      names[i] = name;
    }
  }
}
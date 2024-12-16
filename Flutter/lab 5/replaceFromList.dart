import 'dart:io';

void main() {
  List<String> list = ['Delhi', 'Mumbai', 'Banglore', 'Hyderabad', 'Ahmedabad'];
  print(list);
  int indextorepalce=list.indexOf("Ahmedabad");
  list[indextorepalce]="Surat";
  print(list);
}
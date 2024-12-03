import 'dart:io';

void main() {
  print("Hello World!");

  int a = int.parse(stdin.readLineSync()!);
  stdout.write(a); // rest of the code will start from same line

  double a1 = double.parse(stdin.readLineSync()!);
  print(a1); // new line

  String name1 = stdin.readLineSync()!;
  print(name1);

  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }
  var result = fibonacci(20);
  print(result);

  flybyObjects.where((name) => name.contains('turn')).forEach(print);

  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();

  // destructuring
  var numList = [1, 2, 3];
  // List pattern [a, b, c] destructures the three elements from numList...
  var [a3, b, c] = numList;
  // ...and assigns them to new variables.
  print(a3 + b + c);

  // Declares new variables a, b, and c.
  var (a4, [b1, c1]) = ('str', [1, 2]);
  print(a4);
  print(b1);
  print(c1);

  // swap without third variable
  var (a5, b5) = ('left', 'right');
  (b5, a5) = (a5, b5); // Swap.
  print('$a5 $b5'); // Prints "right left".
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method.
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}
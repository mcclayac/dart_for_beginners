

import 'dart:io';




void main() {

  int userAnswer;
  List<String> names = ["Karl","Mark","Adam","Seth"];
  String? which;

  print('names = $names');
  print('What index in the names List do you want to look at?');
  which = stdin.readLineSync();
  try {
    userAnswer = int.parse(which!);
    print(names[userAnswer]);
  } on FormatException {
    print('Could not understand the input');
  } on RangeError {
    print('No name for the index chosen.');
  } finally {
    print("You selected $which out of ${names.length}");
  }

}  // end main





import 'dart:io';

void main() {


  print('Enter age:');
  String? numStr = stdin.readLineSync();
  int age = int.parse(numStr!);

  print('age - $age');

  try {
    print("Enter mother's age");
    int? motherAge = int.parse(stdin.readLineSync()!);
    if (motherAge == null) {
      print('Did not enter an age for mother');
      return;
    }
    print('Mother age -- $motherAge');
  } on FormatException catch(e) {
    print('Did not enter a valid number');
  } finally {
    print('End of the program');
  }  // end try
}  // end main

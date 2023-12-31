
import 'dart:io';

class Player {
  String name;
  int score = 0;

  Player(this.name);

  /// What does the player want to do?
  String getMove() {
    print("Do you want to (R)oll, (S)tay, or (Q)uit?");
    while (true) {  // exits if proper response, otherwise keeps taking input
      String? selection = stdin.readLineSync()?.toUpperCase();  // get uppercase input

      if (selection == "R") {  // roll
        return "Roll";
      } else if (selection == "S") {  // stay
        return "Stay";
      } else if (selection == "Q") {  // quit
        exit(0);  // quits the program
      }
    }
  }

  @override
  String toString() {
    return this.name.toString();
  }
}

import 'dart:math';


class Dice {
  int _sides = 6;
  int _numberOfDice = 2;

  int get numberOfDice => _numberOfDice;

  set numberOfDice(int value) {
    _numberOfDice = value;
  }
  List<int> _values = [4,6];

  int get maximumValue => sides * numberOfDice;
  int get sides => _sides;
  // total is the sum of[_values]
  int get total => _values.fold(0, (first, second) => first + second);

  // Constructor
  // Dice(int ns, int numberOfDice) {
  //   this._sides = ns;
  //   this._numberOfDice = numberOfDice;
  // }

  //  Shortened Constructor
  Dice(this._sides, this._numberOfDice);

  set sides (int s) {
    if (s < 2) {
      _sides = 2;
    } else {
      _sides = s;
    }
  }  // end sides

  // method roll
  void roll() {
    List<int> newValues = [];;
    Random rand = Random();
    for (int i = 0; i < numberOfDice; i++) {
      newValues.add(rand.nextInt(sides) + 1);
    } // end for
    _values = newValues;
  } // end roll

  // prints the values of the dice
  void printDice() => print(_values);

  String printD() => ': $_values';
} // end Dice

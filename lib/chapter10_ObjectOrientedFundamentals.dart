
import 'pig/lib/Dice.dart';
import 'pig/lib/Player.dart';
import "dart:math";  // for Random
import "dart:io";  // for stdin

List<Player> players = [];
Dice diced = Dice(6,1);  // 6 sides, 1 die;

void objectsFirst() {

  print("\nObjects First");
  List animalList1, animalList2;
  animalList1 = ["antelope", "cat", "dog"];
  animalList2 = animalList1;
  animalList2.add("rabbit");
  print('animalList1 = $animalList1');
}


void addAnimal(List animalList) {
  animalList.add("mouse");
}
void passByreference() {
  print("]nPass By reference");
  List list1 = ["watermelon"];
  print('list contents = $list1');
  addAnimal(list1);
  print('list contents = $list1');  // list contents = [watermelon, mouse]
}


class Temperature {

  double degreesKelvin = 0.0;

  Temperature(this.degreesKelvin);

  Temperature.fromCelsius(double degreesCelsius) {
    degreesKelvin = degreesCelsius + 273.15;
  }

  Temperature.fromFahrenheit(double degreesfahrenheit) {
    degreesKelvin = 5 / 9 * (degreesfahrenheit - 32) + 273.15;
  }

}

void initialClassInstaniation() {


  print('\nClass Introduction');
  Dice d = Dice(6, 4);
  d.sides = 6;
  d.numberOfDice = 2;
  // d.values = [4,6];  // chages to private instance variable of Dice
  print('Dice(6, 4) = $d');
  print('Dice.sides = ${d.sides}');
  print('Dice maximumValue = ${d.maximumValue}');
  d.roll();
  print('dice printD = ${d.printD()}');
  d.printDice();
  d.roll();
  print('dice printD = ${d.printD()}');
  d.printDice();
  print('/Constructor Basics');
  d = Dice(8, 6);
  print('d = Dice(8, 6);');
  print('d.total = ${d.total}');
}

/// initialize [players]
void createPlayers() {
  int numPlayers;

  do {
    print("How many players will be playing?");
    String? inTemp = stdin.readLineSync();
    try {
      numPlayers = int.parse(inTemp!);
    } on FormatException {  // uh oh, could not be turned into integer
      print("Not a valid selection");
      exit(0);  // exit
    }
  } while (numPlayers < 1);  // can't have <1 players

  // create the Player objects responsible for tracking
  for (int i = 1; i <= numPlayers; i++) {
    print("What is Player $i's name?");
    String? name = stdin.readLineSync();
    Player player = new Player(name!);
    players.add(player);
  }
}

void main() {

  print("\n\nObject Oriented Fundamentals");

  objectsFirst();

  passByreference();

  initialClassInstaniation();

  // create Players
  createPlayers();
  print(players);
}
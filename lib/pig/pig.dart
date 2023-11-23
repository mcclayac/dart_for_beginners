

import 'lib/Dice.dart';
import 'lib/Player.dart';
import 'dart:io';

List<Player> players = [];
Dice d = Dice(6,1);  // 6 sides, 1 die;

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

  createPlayers();

  while (true) {
    for (Player player in players) {
      int turnTotal = 0;
      print("");
      print('It\'s ${player.name}\'s turn with a score of ${player.score}.');

      String move = "";
      do {
        move = player.getMove();

        if (move == "Roll") {
          d.roll();
          print('${player.name} rolled a ${d.total}.');

          if (d.total == 1) {
            print("${player.name} loses a turn.");
            break; // do loop
          } else {
            turnTotal += d.total;
          }  // end-if if (d.total == 1)
        } else {  // Player can only select Roll or Stay, so this is Stay // end-if

          player.score += turnTotal;
          print('${player.name}\' turn ends with a score of ${player.score}.');

          if (player.score >= 100) {
            print('${player.name} won!');
            exit(0);
          }  // end-if if (player.score >= 100)
        }  // end-if if (move == "Roll");
      } while (move == "Roll");  // end-do  do {
    }  // end-for for (Player player in players)
  } // end-while while (true) {
} // end main  void main() {
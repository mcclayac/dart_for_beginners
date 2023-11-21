
import 'dart:io';
import 'dart:math';


int myltiply(int x, int y ) {
  int product = x * y;
  return product;
}


void printWithFunctionCall() {
  int x = 2;
  int y = 2;
  // FUnction call in String Definition
  print("mutiply $x times $y is ${myltiply(x, y)}");
}


sayHello(String name) =>  print('Hello $name');
void sayHello2(String name) => print('Hello 2 $name');
int multiply2(int x, int y) => x * y;
int luckyNumber() => 7;


void shortFormFunctions() {

  int x = 3;
  int y = 3;
  print('short Form Functions');
  sayHello('Tony');
  sayHello2('Maxine');
  print("mutiply2 $x times $y is ${multiply2(x, y)}");

}

/// Get a player move via keyboard input
/// If the player does not enter a valid move
/// return "Quit" so that the main game loop
/// knows to end the game
String getPlayerMove() {
  print("Would you like (R)ock, (P)aper, or(S)cissors?");
  String selection = stdin.readLineSync()!.toUpperCase();

  switch(selection) {
    case "R":
      return "Rock";
      break;
    case "S":
      return "Scissors";
      break;
    case "P":
      return "Paper";
      break;
    default:
      return "Quit";
      break;
  }
}

/// Return a random move in the form of a string of either
/// "Rock", "Paper", or "Scissors"
String getComputerMove() {

  // get random number
  Random rand = new Random();
  int move = rand.nextInt(3);

  switch(move) {
    case 0 :
      return "Rock";
      break;
    case 1:
      return "Paper";
      break;
    case 2:
      return "Scissors";
      break;
    default:
      return "";
      break;
  } // end switch
}

/// Determine if the player or the computer won
/// by comparing [playerMove] to [computerMove]
String whoWon(String playerMove, String computerMove) {

  final String youWin = "You Win!";
  final String tie = "Tie";
  final String computerWin = "Computer Wins!";

  if (playerMove == computerMove ) { // if the same it is a tie
    return tie;
  } else if (playerMove == "Rock" && computerMove == "Scissors") {
    return youWin;
  } else if (playerMove == "Scissors" && computerMove == "Paper") {
    return youWin;
  } else if (playerMove == "Paper"  && computerMove == "Rock") {
    return youWin;
  } else {
    return computerWin;
  }
}



void rockPaperScissors() {

  while (true) {
    print("Rock, Paper. Scissors Schoot!");
    String playerMove = getPlayerMove();
    String computerMove = getComputerMove();
    if (playerMove == "Quit") {
      return;
    }

    print('You played  $playerMove');
    print('Computer played : $computerMove');
    print(whoWon(playerMove, computerMove));
    print('\n\n');
  }
}

/// Optional paramenters
/// 
void repeat(String word, [int? repetitions]) {
  if (repetitions != null ) {
    for (int i = 0; i < repetitions; i++) {
      print(word);
    }
  } else {
    print(word);
  }
}

void repeat2(String word, [int repetitions = 4]) {
  if (repetitions != null ) {
    for (int i = 0; i < repetitions; i++) {
      print(word);
    }
  }
}


// Optional paramenters
void repeat3(String word, {int repetitions = 4, String exclamation = ''}) {
  if (repetitions != null ) {
    for (int i = 0; i < repetitions; i++) {
      print(word + exclamation);
    }
  }
}

/// First Class Citizens
///
void talkAbout(String toShout, shoutFunc) {
  print(shoutFunc(toShout));
}

String exclame(String toExclaim) => toExclaim + "!";

String manyTalk(String toMany) {
  String allTogether = "";
  int repetitions = 4;
  for (int i = 0; i < repetitions; i++) {
    allTogether += " " + toMany;
  }  // end-for
  return allTogether;
}

// First Class Functions
void firstClassCitizen() {

  print('\n\nFirst Class Functions');
  talkAbout("TicTac", exclame);
  talkAbout("TocToc", manyTalk);
  talkAbout("TikTik", manyTalk);
}


// FUnctions withmn Functions
void functionsWithFuctions() {


  print("\n\nFunctions within Functions");
// Within FUnction
  void talkAbout2(String toShout, shoutFunc) {
    print(shoutFunc(toShout));
  }

  // with function
  String exclame2(String toExclaim) => toExclaim + "!";

  // Within Function
  String manyTalk2(String toMany) {
    String allTogether = "";
    int repetitions = 4;
    for (int i = 0; i < repetitions; i++) {
      allTogether += " " + toMany;
    }  // end-for
    return allTogether;
  }

  talkAbout2("Hello2", exclame2);
  talkAbout2("TicToc", manyTalk);

  // anonymous function
  talkAbout2("Wow", (String s) => s.toUpperCase());

  // Did you notice the anonymous function in the last
  // line of main()? That’s right, a function with no
  // title to identify it is known as an anonymous
  // function. Dart allows the definition of
  // anonymous functions, even within a function
  // call, as above. Anonymous functions are useful
  // in situations where a function does not need to
  // be called from multiple parts of a program by
  // its identifier, or where they simply make
  // sense stylistically.
}


// Calculate n! factorial recursively
int factorial(int n) {
  if (n <= 1) {
    return 1;
  }
  return n * factorial(n -1);
}

// calculat factorial iteratovely
int factorial2(int n) {
  int total = 1;
  for (int i = n; i > 0; i--) {
    total *= i;
  }
  return total;
}

void calculateFactorial() {


  print('\n\nFactorial Calculated recursivly and iteratively');
  int n = 0;

  print('What factorial do you want to calculate??');
  String? temp = stdin.readLineSync();

  try {
    n = int.parse(temp!);
  } on FormatException {
    print("That was not an integer.");
    return;
  }

  if (n <= 0) {
    print("That's not a positive integer!");
    return;
  }

  print('n! = ${factorial(n)} calculated recursivly');
  print('n! = ${factorial2(n)} calculated Iteratively');
}


void main() {

  print('\n\nChapter 5 Functions');

  printWithFunctionCall();
  shortFormFunctions();
  // rockPaperScissors();
  
  print('\n\nRepititons');
  repeat('Tony', 3);
  repeat2('Maxine');

  repeat3('Kristin');
  repeat3('Alexis', repetitions: 2);
  repeat3('Moses', repetitions : 4, exclamation : '!');
  repeat3('Angelo', repetitions: 2, exclamation: " ,");

  // repeat("Dog", "!");  // ILLEGAL
  // repeat("Dog", "!", 2);  // ILLEGAL

  // First Class Citizens
  firstClassCitizen();

  // Functions within Functions
  functionsWithFuctions();

  // Fuctions recursivly and iteratively
  calculateFactorial();

}
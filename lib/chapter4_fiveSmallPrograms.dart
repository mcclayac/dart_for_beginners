import 'dart:math';
import 'dart:io';


void main() {


  // numberGuessing();
  // temperatureConverter();
  // montyHallProblem();
  piFuction();
  piCalculator();
  shortProgarms();






}

void shortProgarms() {

  print('\nShort Programs');
  print('+= exaluator');
  int initalValue = 20;
  int total = initalValue;
  int addValue = 5;
  total += addValue;
  // total = total + 3;  equivalent
  print('value of total= $initalValue, total += $addValue is $total');

}

void piCalculator() {
  const int ITERATIONS = 100000;
  double series = 1.0;
  double denominator = 3.0;
  double negate = -1.0;

  for ( int i = 0; i < ITERATIONS; i++) {
    series += (negate * (1 / denominator));
    denominator += 2.0;
    negate *= -1.0;
  }

  double piLocal = 4 * series;
  print("We calculated pi as $piLocal");
  print("The Real pi is $pi");
  print("We were off by ${pi - piLocal}");

}

void piFuction() {

  print('Dart:Math.pi = $pi');
  print(pi);

}

void montyHallProblem() {

  const int TRIALS = 1000000;
  int correct = 0;
  // TRIALS = 5;  //ERROR: TRIALS cannot be changed
  Random rand = new Random();
  for (int i = 0; i < TRIALS; i++) {
    int randDoor = rand.nextInt(3) + 1;  // random door 1 to 3
    int guess = 1;  // we guess door 1
    int eliminated;

    if (randDoor == 2) {
      eliminated = 3;  // door 3 eliminated
    } else if (randDoor == 3) {
      eliminated = 2;  // door 2 eliminated
    } else { // randDoor must be 1
      eliminated = rand.nextInt(2) + 2; // door 2 or 3 randomly
    }  // end if

    if (eliminated == 2) {
      guess = 3;   // switch our guess to door 3
    } else if (eliminated == 3) {
      guess = 2;   // swicth our guess to door 2
    }  // end if

    if (guess == randDoor) {
      correct++;
    }  // end if
  } // end for
  print('The persentatge of correct guesses was ${(correct / TRIALS) * 100}%');
} // end montyHallProblem

void temperatureConverter() {

  print("\n\nA:Convert Celsius to Fahrenheit\nB:Convert Fahrenheit to Celsius");
  String selection;

  do {
    selection = stdin.readLineSync()!.toUpperCase();
  }  while (selection != "A" && selection != "B"); // think of && like AND

  print('Enter the starting temperature');
  String? inTemp = stdin.readLineSync();
  int temp = int.parse(inTemp!);

  switch(selection) {
    case "A":
      print("$temp degrees Celsius is ${temp * 1.8 + 32} degrees Fahrenheit");
      break;
    case "B":
      print("$temp degrees Farenheight is ${(temp - 32) / 1.8} degrees Celsius");
      break;
    default :
      break;
  } // switch
}

void numberGuessing() {

  int guess;

  print('\nNumberGuessingGame');
  Random rand = new Random();  //create a random number generator
  int answer = rand.nextInt(100); //gets a random integer from 0 to 99
  do {
    print("Enter Your Guess:");
    String? temp = stdin.readLineSync();
    guess = int.parse(temp!);
    if (guess < answer) {
      print('Too low!');
    } else if (guess > answer){
      print('Too high!');
    }
  } while (guess != answer);
  print('You got it');
}
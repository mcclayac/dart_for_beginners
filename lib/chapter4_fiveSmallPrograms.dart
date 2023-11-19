import 'dart:math';
import 'dart:io';


void main() {


  numberGuessing();
  temperatureConverter();


}

void temperatureConverter() {

  print("\n\nA:Convert Celsius to Fahrenheit\nB:Convert Fahrenheit to Celsius");
  String selection;

  do {
    selection = stdin.readLineSync()!.toUpperCase();
  }  while (selection != "A" && selection != "B"); // think of && like AND


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
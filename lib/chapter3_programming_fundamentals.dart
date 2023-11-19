


void main() {

  variables();
  operators();
  strings();
  controlStructures();
  
}

void controlStructures() {

  print('\n\nControl Structures');
  int temp = 75;

  if (temp > 75) {
    print("it is hot today.");
  } else if (temp > 50) {
    print('It is mild today.');
  } else {
    print("it is cold today");
  }

  print('\nBooleans bool');
  bool b = true;
  if(b) {
    print("True");
  } else {
    print("False");
  }

  if(!b) {
    print("True");
  } else {
    print("False");
  }

  print('==============');
  if(!(temp > 75)) {
    print('It is NOT hot today.'); // prints only if temperature is NOT > 75
  }

  String favoriteAnimal = "dog";

  switch (favoriteAnimal) {
    case "dog":
      print("Bark!");
      break;
    case "cow":
      print("Mooo!");
      break;
    case "cat":
      print("Meow");
      break;
    default:
      print("Your animal is a new species to me!");

  }



}

void strings() {

  print('\n\nStrings');

  int temp = 75;
  String weatherReport = "It is rainy and $temp degrees";
  String obviousReport = 'If it were 30 degrees cooler it would be ${temp - 30} degrees.';

  print(weatherReport);
  print(obviousReport);

  print('\'I am very tired,\' she said.');

  String myRawString = r"Here are my \ not \ special backslashes\";
  print(myRawString); // Here are my \ not \ special backslashes\
}

void operators() {

  print('\n\nOperators');
  int something = 2;
  int other = 2;
  int total = something + other; // total is 4
  print('Total = $total');

  double totalDouble = total / other;
  print('total / other = $totalDouble');

  something = 2 * 4;  // so,ething is now 8
  print('Something = $something');

  print('increment and decrement');
  int x = 1;
  print('int x = 1');
  x++;
  print('x++ = $x');  // = 2
  x--;
  print('x-- = $x');  // = 1

  print('Operators precendence');
  int a = ((5 + 5) * 5);  // a is 50
  int b = (5 + (5 * 5));  // b is 30
  int c = 5 + 5 * 5;  //c is 30
  print('((5 + 5) * 5) = $a');
  print('(5 + (5 * 5)) = $b');
  print('5 + 5 * 5 = $c');

}


void variables() {


  print("\n\nVariables");
  var x = 5;
  int y = 6;
  var animalWorld = 'antelope';
  String coolWorld = 'antelope';
  // coolWorld = 5;  //  This is an error

  print('x: $x  y: $y');
  print('Animal World = $animalWorld');
  print('Cool World = $coolWorld');


  print('\nBooleans bool');
  bool b = true;
  if(b) {
    print("True");
  } else {
    print("False");
  }

  if(!b) {
    print("True");
  } else {
    print("False");
  }

}
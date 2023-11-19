


void main() {

  variables();
  operators();
  strings();
  controlStructures();
  loops();

  
}

void loops() {

  print('\n\nLoops');

  int beersOnTheWall = 5;
  print('\n\nBeers on the wall version 1, beerOnTheWall =  $beersOnTheWall');
  while (beersOnTheWall > 0) {
    print("\n$beersOnTheWall bottles of beers on the wall, $beersOnTheWall\nbottles of beer. Take one down, pass it around, ${beersOnTheWall -1}\nbottels of beer on the wall.");
    beersOnTheWall--;
  }

  beersOnTheWall = 5;
  print('\n\nBeers on the wall version 2, beerOnTheWall =  $beersOnTheWall');
  do {
    print("\n$beersOnTheWall bottles of beers on the wall, $beersOnTheWall\nbottles of beer. Take one down, pass it around, ${beersOnTheWall -1}\nbottels of beer on the wall.");
    beersOnTheWall--;
  } while (beersOnTheWall > 0);


  print('\n\nFor Loop');
  for (int bOnTheWall = 3; bOnTheWall > 0; bOnTheWall--) {
    print("\n$bOnTheWall bottles of beers on the wall, $bOnTheWall\nbottles of beer. Take one down, pass it around, ${bOnTheWall -1}\nbottels of beer on the wall.");
  }

  int num = 5; // Number of iterations
  int total =0;

  print('\nCount to $num');
  for (int i = 1; i <= num; i++) {
    total += i;
    print('Number $i');
  }
  print('Total = $total');


  print('\n\nPoweTotal');
  int outLoop = 4;
  int inLoop = 4;
  for(int x = 1; x <= outLoop; x++) {
    int powerTotal = 1;
    for(int y = 1; y <= 10; y++ ) {
      powerTotal = powerTotal * x;
      print('$x^$y is $powerTotal');
    }
  }
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
  print('Favorite Animal = $favoriteAnimal');
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
  int digit = 6;
  print('\ndigit is : $digit');

  switch (digit) {
    case 0:
      print("Zero");
      break ;
    case 1:
    case 3:
    case 5:
    case 7:
    case 9:
      print("Odd");
      break ;
    case 2:
    case 4:
    case 6:
    case 8:
      print("Even");
      break ;
    default :
      print("Not a Digit");
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
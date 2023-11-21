
import 'dart:math';


void listDefinitions() {


  print('\nList Definitions');
  List ex1 = [];
  var ex2 = [];
  // List ex3 = new List();
  // var ex4 = new List();
  List ex5 = [12,15,26];
  List ex6 = ["hello","hi","howdy","hey"];
  List ex7 = ["hello",5,"do it", 23.26];
  int x = 99;
  String s = "ninety nine";

  List ex8 = [x, s];

  print('This is the element of ex6[2] = ${ex6[2]}.');

  print('\nFor Loop with lists ${ex6}');
  for(int i = 0; i < ex6.length ; i++) {
    print('   element number ex6[$i]  is ${ex6[i]} . ');
  }

  print('\nAlternative for loop [in] predicate');
  for(String greeting in ex6) {
    print('   element is $greeting .');
  }

  print("\nLoop through list backward");
  for (int i = (ex6.length - 1); i >=0 ; i--) {
    print('   element number ex6[$i]  is ${ex6[i]} . ');
  }

  print('\n\nDogs List .. add and remove');
  List dogsOwned = ["Cocker Spaniel", "Springer Spaniel", "Golden Retriever", "Poodle"];
  print('dogs owned = $dogsOwned');

  dogsOwned.add("Black Lab");
//dogsOwned is ["Cocker Spaniel", "Springer Spaniel", "Golden Retriever", "Poodle", "Black Lab"]
  print('dogs owned - dogsOwned.add("Black Lab")');
  print('dogs owned = $dogsOwned');


  dogsOwned.remove("Springer Spaniel");
//dogsOwned is ["Cocker Spaniel", "Golden Retriever", "Poodle", "Black Lab"]
  print('dogs owned - dogsOwned.remove("Springer Spaniel")');
  print('dogs owned = $dogsOwned');

  dogsOwned.add("Poodle");
//dogsOwned is ["Cocker Spaniel", "Golden Retriever", "Poodle", "Black Lab", "Poodle"]
  print('dogs owned - dogsOwned.add("Poodle")');
  print('dogs owned = $dogsOwned');

  dogsOwned.remove("Poodle");
//dogsOwned is ["Cocker Spaniel", "Golden Retriever", "Black Lab", "Poodle"]
  print('dogs owned - dogsOwned.remove("Poodle")');
  print('dogs owned = $dogsOwned');

  print('\nLists Generics');
  List<int> myNums = [0,1,1,2,3,55,8,13];
  List<String> myStrings = ["strawberry","lavendar","aqua","violet"];
  // List<String> mybad = ["strawberry",13,"lavendar", 8];
  List<List<int>> myListofList = [[1,2,3],[4,5,6]]; // A list of lists
  // List<int> myNums2 = new List<int>();
  List<int> myNums2 = [];
  myNums2.add(5);

  print('myNums = $myNums');
  print('myNums2 = $myNums2');
  print('myStrings = $myStrings');
  print('MyListsOfLists = $myListofList');
}

List<DateTime> birthdayParadox() {

  List<DateTime> birthdays = [];
  Random rand = new Random();
  int NUM_YEAR_MIN = 1987;
  int NUM_YEAR_MAX = 2023;
  int NUM_MONTH = 12;
  int NUM_DAYS = 28;
  int BIRTHDAYS_TO_GENERATE = 23;

  int nextYear(int min, int max) => min + rand.nextInt(max -min);

  for (int i = 0; i < BIRTHDAYS_TO_GENERATE; i++) {
    int randMonth = rand.nextInt(NUM_MONTH) + 1;
    int randDay = rand.nextInt(NUM_DAYS) + 1;
    int randYear = nextYear(NUM_YEAR_MIN, NUM_YEAR_MAX);
    birthdays.add(new DateTime(randYear, randMonth, randDay));
  }
  return birthdays;
}

bool containsDuplicates(List<DateTime> birthdays) {
  bool duplicates = false;



  return duplicates;
}


void birthdayDuplicate() {
  List<DateTime> birthdays = birthdayParadox();
  int ITERATIONS = 10000;
  print('\nBirthdays Duplicate foriterations =  $ITERATIONS');
  int matches = 0;

  for ( int i = 0; i < ITERATIONS; i++) {
    birthdays = birthdayParadox();

  }

}

void main() {

  print('\nData Structures');

  listDefinitions();


  List<DateTime> birthdays = birthdayParadox();
  print('\nBirthdays');
  for (DateTime dt in birthdays) {
    print('   - $dt');
  }

}
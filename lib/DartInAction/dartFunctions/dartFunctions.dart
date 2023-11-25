






// Optional Positional Parameters
void printInfo(String name,[int? age, double? height]) {

  print('\nName : $name');
  if (age != null) print('age : $age');
  if (height != null) print ('height: $height');
}

// Optional Names Positional Parameters
void printInfo2({String? name,int? age, double? height}) {

  print('-------------');
  if(name != null) print('\nName : $name');
  if (age != null) print('age : $age');
  if (height != null) print ('height: $height');
}

// Optional Names Positional Parameters with default values
void printInfo3(String name,{int age = 22, double height = 80}) {

  print('-------------');
  if(name != null) print('\nName : $name');
  if (age != null) print('age : $age');
  if (height != null) print ('height: $height');
}

void main(List<String> arguments) {

  // Optional Positional Parameters
  print('Optional Positional Parameters');
  printInfo('Tony', 52, 66.32);
  printInfo('Maxine', 73);
  printInfo('Kristin');

  print("");
  // Optional Named Positional Parameters
  print('Optional Named Positional Parameters');
  printInfo2();
  printInfo2(name: 'Tony', age: 52, height: 66.32);
  printInfo2(name: 'Maxine', age: 73);
  printInfo2(name: 'Kristin');

  print("");
  // Optional Named Positional Parameters Default values
  print('Optional Named Positional Parameters with default values');
  printInfo3('Tony', age: 52, height: 66.32);
  printInfo3('Maxine', age: 73);
  printInfo3('Kristin');

  print("");

}
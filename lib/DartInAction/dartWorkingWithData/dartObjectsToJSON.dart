import 'dart:convert';
// import 'dart:J'


class Person {
  String name;
  int age;
  String email;

  Person({required this.name,required this.age, required this.email}) ;

  factory Person.fromJson(Map<String, dynamic>json) {
    return Person(name: json['name'],
        age: json['age'],
        email: json['email'],
    );  // end return Person(
  }  // factory Person.fromJson(Map<String, dynamic>json)

  Map<String, dynamic> toJson() {
    return {
      'name':name,
      'age' : age,
      'email':email,
    };
  } // end Map<String, dynamic> toJson()
}  // end Person


void main() {

  Person person = Person(name: 'Tony',age: 52,email: 'tony@gmail.com');
  String jsonString = jsonEncode(person);
  print(jsonString);

  //Decode JSON to a dart Object
  Person decodedPerson = Person.fromJson(jsonDecode(jsonString));

  print('\nDecoded Person Object');
  print('name = ${decodedPerson.name}');
  print('age = ${decodedPerson.age}');
  print('email = ${decodedPerson.email}');

  Person person1 = Person(name: 'Maxine',age: 73,email: 'maxx7@yahoo.com');
  Person person2 = Person(name: 'Kristin',age: 33,email: 'kristin@yahoo.com');
  Person person3 = Person(name: 'Alexis',age: 51,email: 'alexis@gmail.com');
  Person person4 = Person(name: 'Angelo',age: 56,email: 'angelo@gmail');

  List<Person> personList = [person1, person2, person3, person4];

  // Encode a list of objects to a JSON array
  String jsonArray = jsonEncode(personList);

  print('\nEncoded personList');
  print(jsonArray);

  // Decode a JSON array to a list if objects
  // List <Map <String,dynamic>> decodedList = jsonDecode(jsonArray);
  List decodedList = jsonDecode(jsonArray);
  print('\nDecodedList = \n$decodedList');

  print('\nDecoded Person List<Person>');
  // casting from JSON List

  // This part of my code is not working

  /*
  List<Person> decodedPersonList = List<Person>.from(decodedList);
  print('\nCasting from List to List<Person> \nList<Person>.from(decodedList) \n$decodedPersonList');

  print('\nLooping through List<Person>');
  for (Person aPerson in decodedPersonList)  {
    print('\naPerson Object');
    print('name = ${aPerson.name}');
    print('age = ${aPerson.age}');
    print('email = ${aPerson.email}');
  }  // end for (Person aPerson in decodedPersonList)
  */

  String prettyJsonString = JsonEncoder.withIndent('  ').convert(person);
  print('\npretty json String \n$prettyJsonString');
}  // end main
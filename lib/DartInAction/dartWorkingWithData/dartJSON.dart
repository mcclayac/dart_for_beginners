

import 'dart:convert';

void main() {

  Map<String, dynamic> person = {
    "name":"john",
    'age':30,
    'email':'john@example.com'
  };

  print(' map original = $person');

  String jsonString = jsonEncode(person);
  print('\nJson String =');
  print(jsonString);

  Map<String, dynamic> personDecoded = jsonDecode(jsonString);

  print('\npersonDecoded');
  print('Name : ${personDecoded['name']}');
  print('age : ${personDecoded['age']}');
  print('email : ${personDecoded['email']}');
}
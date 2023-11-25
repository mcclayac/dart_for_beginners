
import 'dart:io';

void main(List<String> arguments) {

  print('Enter your name?');
  String? name = stdin.readLineSync();

  print('Hello,$name! \nWelcome to Splendid Coders');

  stdout.write('Hello,$name! \nWelcome to Splendid Coders');
}
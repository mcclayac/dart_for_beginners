





void main(List<String> arguments) {

  // with arguments
  add(int a, int b) => a + b;

  // No arguments
  greet() => 'Hello, World';

  var greeting = 'Hi';
  //greetingWithExternalVariable
  greetingWithExternalVariable(String name) => '$greeting, $name';

  print(add(3,4));
  print(greet());
  print(greetingWithExternalVariable('Tony'));


}


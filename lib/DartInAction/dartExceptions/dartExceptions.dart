

void dartEceptions() {

  //
  print('\nDart Exceptions');
  print('IntegetDivisionByZeroException');
  int x = 12;
  int y = 0;
  int res;
  print("print(x($x) / y($y))");
  try {
    print('trying');
    res = (x ~/ y);
    print('x($x) / y($y) = $res');
  } on IntegerDivisionByZeroException catch(e){
    print(e.toString());
    print('Cannot divide by zero');
    print("print('x($x) / y($y)')");
  } finally {
    print('This will print no matter what.');
  }

}


void main() {

  dartEceptions();
}
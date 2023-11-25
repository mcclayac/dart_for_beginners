

void main(List<String> arguments) {

  int firstNum = 10;
  int? secondNum;

  if(firstNum == 10) print("The value of firstNum = $firstNum is set.");
  if (secondNum == null) print("It is true");
  secondNum ??= firstNum;
  print(secondNum);
}
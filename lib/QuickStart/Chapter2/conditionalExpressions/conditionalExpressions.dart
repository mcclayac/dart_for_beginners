




void main(List<String> arguments) {

  // condition? expressions1 : expression2

  int num1 = 20;
  int num2 = 30;
  print('int num1 = 20;');
  print('int num2 = 30;');
  int smallerNumber= num1 < num2? num1 : num2;
  print('smllerNumber= num1 < num2? num1 : num2; = $smallerNumber');

  int num3 = 40;
  int? num4;
  print('int num3 = 40;');
  print('int? num4;');
  int? smallerNumber2 = num4 ?? num3;
  print('int? smallerNumber2 = num4 ?? num3; =$smallerNumber2');





}
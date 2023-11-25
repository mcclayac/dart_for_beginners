

void main(List<String> arguements) {

  int aNum = 12;
  double aDouble = 2.25;
  var theResult = aNum ~/ aDouble;
  int theResult2 = aNum ~/ aDouble;

  print('theResult = $theResult');
  print('theResult2 = $theResult2');

  var theResult3 = aNum / aDouble;
  double theResult4 = aNum / aDouble;

  print('theResult3 = $theResult3');
  print('theResult4 = $theResult4');

}
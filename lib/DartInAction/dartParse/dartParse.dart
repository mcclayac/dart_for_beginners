
void main(List<String> arguments) {

  var a = num.parse("20.56");
  var b = num.parse('15.63');
  var c = a + b;
  print("The sum is $c");
  c += 200;

  double d = double.parse('20.56');
  double e = double.parse('15.63');
  double f = d + e;
  print('the sum is ${d + e} or $f.');

  print('f hashcode = ${f.hashCode}');
  print('f isFinite = ${f.isFinite}');
  print('f isInfinite = ${f.isInfinite}');
  print('f isNan = ${f.isNaN}');
  print('f sign = ${f.sign}');
  print('f sign = ${f.abs()}');
  f *= -1;
  print('value of f is $f');
  print('f sign = ${f.abs()}');
  print('f ceil = ${f.ceil()}');
  print('f floor = ${f.floor()}');
  print('f compareTo c {$f,$c} = ${f.compareTo(c)}');
  print('f roundToDouble = ${f.roundToDouble()}');
  print('f round = ${f.round()}');
}
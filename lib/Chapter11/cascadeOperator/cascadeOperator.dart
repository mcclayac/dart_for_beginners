




void main() {

  List fruits = [];
  fruits.length = 0;
  fruits.add("lime");
  fruits.add("orange");
  fruits.add("peach");
  fruits.add('apple');
  fruits.add('banana');
  fruits.shuffle();
  print('fruits $fruits');

  // cascadeOperator
  List fruits2 = []
    ..length = 0
    ..add("lime")
    ..add("orange")
    ..add("peach")
    ..add('apple')
    ..add('banana')
    ..shuffle();
  print('fruits2 $fruits2');


}
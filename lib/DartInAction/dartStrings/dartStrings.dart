


void main(List<String> arguments) {

  String name1 = 'Subhash';
  String name2 = 'Any';
  print('name1 = $name1');
  print('name2 = $name2');
  print('(name1 == name2) = ${name1 == name2}');
  print('name1.compareTo(name2) = ${name1.compareTo(name2)}');
  print('name2.compareTo(name1) = ${name2.compareTo(name1)}');

  String name3 = 'Subhash Chandra';
  String first = name3.substring(0,4);
  print('name3 = $name3');
  print('name3.substring(0,4); = $first');
}
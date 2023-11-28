



//  https://dart.dev/codelabs/iterables

bool predicate(String item) {
  return item.length > 5;
}


void main() {

  Iterable<int> iterable = [1,2,3,4,6,0,12,66,-9,-11,-44];

  print('iterable = $iterable');
  int aValue = iterable.elementAt(1);
  print('iterable.elementAt(1) = ${iterable.elementAt(1)}');
  print('iterable.first = ${iterable.first}');
  print('iterable.lastOrNull = ${iterable.lastOrNull}');


  Iterable<String> strIterable = ['eggs','can','Salad', 'Popcorn', 'Toast'];
  print('\nString Iterable: \n$strIterable');
  for (final element in strIterable) {
    print(element);
  }
  String aStrValue = strIterable.elementAt(2);
  print('strIterable.elementAt(2) = ${strIterable.elementAt(2)}');
  print('strIterable.first = ${strIterable.first}');
  print('strIterable.lastorNull = ${strIterable.lastOrNull}');

  print("\nIterable.firstWhere");
  String strElement = strIterable.firstWhere((element) => element.length > 5);
  print('strIterable.firstWhere((element) => element.length > 5) = $strElement');


  String strFoundItem1 = strIterable.firstWhere((element) {
    return element.length > 4;
  });
  print('strIterable.firstWhere((element) strFoundItem1 = $strFoundItem1');

  String strPredicateFunction = """\n\n
  bool predicate(String item) {
    return item.length > 5;
  }
""";
  print(strPredicateFunction);
  String strFoundItem2 = strIterable.firstWhere(predicate);
  print('strIterable.firstWhere(predicate) strFoundItem2 = $strFoundItem2');

  print('firstWhere -10 ');
  String strFoundItem3 = strIterable.firstWhere(
          (element) => element.length > 10,
          orElse: () => 'none!',
  );
  print('done executing firstWhere-10');

  String stringFirstWhere = """
  String strFoundItem3 = strIterable.firstWhere(
          (element) => element.length > 10,
          orElse: () => 'none!',
          = $strFoundItem3
          """;
  print(stringFirstWhere);

  try {
    String stringFirstWhere10 = """
    String strFoundItem4 = strIterable.firstWhere(
            (element) => element.length > 10);
            """;
    print(stringFirstWhere10);
    String strFoundItem4 = strIterable.firstWhere(
            (element) => element.length > 10);
    stringFirstWhere10 = """
    strFoundItem4 = strIterable.firstWhere(
            (element) => element.length > 10);
            = $strFoundItem4
    """;
  } on StateError catch (e) {
    print('Did not find item that matches the where cluase');
    print(e);
  };

  // Example: Using any() and every()
  // The Iterable class provides two methods that you can use to verify conditions:
  //
  // any(): Returns true if at least one element satisfies the condition.
  // every(): Returns true if all elements satisfy the condition.
  print('Iterable.every() and Iterable.any()');
  print('strIterable = $strIterable');

  if (strIterable.any((item) => item.contains('a'))) {
    print('At leat one item contains "a"');
  } else {
    print('No items');
  }

  if (strIterable.every((element) => element.length >= 5)) {
    print('All items have length >= 5');
  } else {
    print('no Items');
  }

  print('Iterable.where');
  print(' iterable = $iterable');
  Iterable<int> iterableEven = iterable.where((element) => element.isEven);
  String prtString = "Iterable<int> iterableEven = iterable.where((element) => element.isEven)";
  print(prtString);
  print('$iterableEven');

  Iterable<int> iterableGreater4 = iterable.where((element) => element > 4);
  prtString = "Iterable<int> iterableGreater4 = iterable.where((element) => element > 4)";
  print(prtString);
  print('$iterableGreater4');

  print('iterable = $iterable');
  print('Iterable.TakeWhile');
  Iterable<int> numbersUntilZero = iterable.takeWhile((value) => value != 0);
  print('Iterable<int> numbersUntilZero = iterable.takeWhile((value) => value != 0) = $numbersUntilZero');

  print('\nIterable.SkipWhile');
  Iterable<int> numbersSkipZero = iterable.skipWhile((value) => value != 0);
  print('Iterable<int> numbersSkipZero = iterable.skipWhile((value) => value != 0) = $numbersSkipZero');

  print('\n! Iterable.TakeWhile  !negative or positive');
  Iterable<int> numbersNotnegative = iterable.takeWhile((value) => !value.isNegative);
  print('Iterable<int> numbersNotnegative = iterable.takeWhile((value) => !value.isNegative) = $numbersNotnegative');

  print('\nMapping');
  print('iterable = $iterable');
  print('each item multiple by 10');
  Iterable<int> numbersMultipleBy10 = iterable.map((element) => element * 10);
  print('Iterable<int> numbersMultipleBy10 = iterable.map((element) => element * 10) = $numbersMultipleBy10');

  print('\neach item convert to String');
  Iterable<String> numbersToStrings = iterable.map((e) => e.toString());
  print('Iterable<String> numbersToStrings = iterable.map((e) => e.toString()) = $numbersToStrings');

  print('\neach item multiple by 2');
  Iterable<int> numbersMultipleBy2 = iterable.map((e) => e * 2);
  print('Iterable<int> numbersMultipleBy2 = iterable.map((e) => e * 2) = $numbersMultipleBy2');




}  // end main
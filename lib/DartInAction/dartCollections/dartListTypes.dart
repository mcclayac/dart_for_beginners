




void fixedLengthList() {

  print('\nFixed Length List');
  List<String> listNames = List.filled(5, '',growable: false);
  print('List listNames = List.filled(5, null,growable: false);');
  listNames[0]='Tony';
  //listNames.add('Tony');
  listNames[1]='Angelo';
  // listNames.add('Angelo');
  // listNames.add('Kristin');
  listNames[2]='Kristin';
  // listNames.add('Maxine');
  listNames[3]='Maxine';
  // listNames.add('Sasha');
  listNames[4]='Sasha';
  // listNames.add('Lisa');
  // listNames[5]='Lisa';  // out-of-index
  // listNames.add('Mary');
  // listNames[6]='Mary';  // out-of-index
  print('$listNames');

  // iterating
  print('Iterating through the list #1');
  for(String anItem in listNames) {
    print(anItem);
  }

  print('----');
  print('Iterating through the list #2');
  listNames.forEach((aItem) { print(aItem);});

  listNames.sort();
  print('----');
  print('Iterating through the list #3');
  print('listNames.sort();');
  listNames.forEach((aItem) { print(aItem);});


}


void main() {

  fixedLengthList();


}
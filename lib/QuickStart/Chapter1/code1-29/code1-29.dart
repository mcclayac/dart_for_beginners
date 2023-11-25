

void main(List<String> arguments) {

  var myProducts = {
    'first':'TV',
    'second':'Refrigerator',
    'third':'Mobile',
    'fourth':'Tablet',
    'fifth':'Computer'
  };
  Map<String,String> myProducts2 = {
    'first':'TV',
    'second':'Refrigerator',
    'third':'Mobile',
    'fourth':'Tablet',
    'fifth':'Computer'
  };
  print('myProducts = $myProducts');
  print('myProducts2 = $myProducts2');
  print("");
  print("myProducts['third'] = ${myProducts['third']} .");
  print("myProducts2['fourth'] = ${myProducts2['fourth']} .");
}
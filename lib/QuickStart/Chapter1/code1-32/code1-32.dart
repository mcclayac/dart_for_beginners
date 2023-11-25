
void main(List<String> arguments) {

  Set mySet = {1,2,3};
  var myProducts = {};
  myProducts['first']='TV';
  myProducts['second']='Refrigerator';
  myProducts['third']='Mobile';
  myProducts['fourth']='Tablet';
  Map<String,String> myProducts2 = {};
  myProducts2['first']='TV';
  myProducts2['second']='Refrigerator';
  myProducts2['third']='Mobile';
  myProducts2['fourth']='Tablet';
  print('myProducts = $myProducts');
  print('myProducts2 = $myProducts2');
  print("");
  print("myProducts['first'] = ${myProducts['first']} .");
  print("myProducts2['fourth'] = ${myProducts2['fourth']} .");
  print("myProducts2['third'] = ${myProducts2['third']} .");
}

void main(List<String> arguments) {

  Set mySet = {1,2,3};
  var myProducts = {
    1:'TV',
    2:'Refrigerator',
    3:mySet.lookup(2),
    4:'Tablet',
    5:'Computer'
  };
  Map<int,Object> myProducts2 = {
    1:'TV',
    2:'Refrigerator',
    3:mySet.lookup(2),
    4:'Tablet',
    5:'Computer'
  };
  print('myProducts = $myProducts');
  print('myProducts2 = $myProducts2');
  print("");
  print("myProducts[1] = ${myProducts[1]} .");
  print("myProducts2[4] = ${myProducts2[4]} .");
  print("myProducts2[3] = ${myProducts2[3]} .");
}
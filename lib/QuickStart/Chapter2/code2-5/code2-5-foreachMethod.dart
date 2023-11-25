

void main(List<String> arguments) {

  Set mySet = {1,2,3,4};
  Map<int, Object> myProducts = {
    1:'TV',
    2:'Refrigerator',
    3: mySet.lookup(2),
    4:'Tablet',
    5:'Computer'
  };

  Map userCollection = {
    "name":"John Smith",
    'Email':'johnny@gmail.com'};

  print("myProducts");
  myProducts.forEach((key, value) => print("$key : $value"));
  print("\nUser Collection");
  userCollection.forEach((k, v) => print("$k : $v"));
  
}




void main() {


  var list_1 = <int>[];
  var list_2 = <double>[];

  var list_3 = <int>[76,12,-43,23,92];
  var list_4 = <double>[-66.32,12.54,55.12];

  var list_5 = [];
  var list_6 = ['fly', 56, "butter",-12.7,true,"cheese"];

  // add to list
  list_3.add(47);
  list_4.add(81.54);
  list_5.add("aaa");
  list_6.add(60);

  // add multiple to list
  list_3.addAll({1,6,3});
  list_5.addAll({"ccc",6.4,"aaa",false,3});

  print(list_1);
  print(list_2);
  print(list_3);
  print(list_4);
  print(list_5);
  print(list_6);

}  // end main
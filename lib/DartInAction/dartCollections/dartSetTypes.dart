



void creatingSets() {

  var fruits = {'apple','banana','cherry'};
  // using Set constructor
  var colors = <String>{};

  //adding element s to a set
  fruits.add('orange');

  // addAll
  fruits.addAll({'grapes','kiwi'});

  print('context of fruit = $fruits');
  print("fruit contains 'apple' = ${fruits.contains('apple')} .");

}

void main() {

  creatingSets();
}
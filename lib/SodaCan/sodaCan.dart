




class SodaCan {
  static double price = 1.00;
  static double capacity = 350.0;
  bool dented = false;

  void drink() => print("Mmm refreshing");

  static double calculateCostPerMililiter() {
    return price / capacity;
  }
}



void main() {

  SodaCan.price = 2.00;  // all Soda cans cost...
  SodaCan myCola = SodaCan();
  print(SodaCan.calculateCostPerMililiter());
  // myCola.calculateCostPerMililiter()  // this is an error
  // myCola.price; // error cannot access static/class variables
  // SodaCan.drink  // error .. dronk is an instnce variable
  myCola.drink();
}
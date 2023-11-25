
class Vehicle {
  String brand;
  String model;

  Vehicle(this.brand, this.model);

  void startEngine() {
    print('Starting the engine of $brand $model.');
  }
}

class Car extends Vehicle {
  int numberOfDoors;

  Car(String brand, String model, this.numberOfDoors) : super(brand,model);

  void honkHorn() => print('HonkingHorn of $brand $model');
}

class Motorcycle extends Vehicle {

  Motorcycle(String brand, String model) : super(brand, model);

  void wheelie() => print('Performing wheelie with $brand $model');
}

void main() {
  var myCar = Car('Toyota','Camery',4);
  var myMotocycle = Motorcycle('Harley-Davidson', 'Sportster');

  myCar.startEngine();
  myCar.honkHorn();

  myMotocycle.startEngine();
  myMotocycle.wheelie();
}
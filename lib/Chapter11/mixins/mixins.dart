

class TimeStamp {
  DateTime creationTime = DateTime.now();

  void printTimeStamp() => print(creationTime);
}

abstract class Patient {
  String name;
  Patient(this.name);
} // end abstract Patient

class NewBorn extends Patient with TimeStamp {
  NewBorn(String name) : super(name);
}  // end NewBorn

class Mother extends Patient {
  Mother(String name) : super(name);
} // end Mother

void main() {
  NewBorn nb = NewBorn("John Doe");
  Mother m = Mother("Jane Doe");
  nb.printTimeStamp();
}  // end main
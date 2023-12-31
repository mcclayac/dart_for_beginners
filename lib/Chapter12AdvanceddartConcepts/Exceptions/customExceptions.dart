

class UnderageException implements Exception {
  String message;  // for the programmer's reference
  UnderageException(this .message);

  String toString() {
    return message;
  }
}

class TommyException implements Exception {  // look how simple it is!
  String toString() {
    return "TommyException: Tommy is not allowed in here ever!";
  }
}

class Person {
  String name;
  int age;
  Person(this .name, this .age);
}

class Bar {
  List<Person> currentPatrons = [];

  void checkId(Person p) {
    if (p.name == "Tommy") {
      throw new TommyException();
    } else if (p.age < 21) {
      throw new UnderageException("UnderageException: ${p.name} is not old enough.");
    } else {
      currentPatrons.add(p);
    }
  }
}

void main() {
  Bar bar = Bar();
  try {
    bar.checkId(Person("Tommy", 25));
    bar.checkId(Person("Jimmy", 22));
    bar.checkId(Person("Sandra", 17));
  } catch (e) {
    print(e);
  }
  print(bar.currentPatrons);
}



class Person {
  String name;  // public field
  int? _age;     // private field

  Person(this.name,this._age);

  Person.birth(this.name) {
    _age = 0;
  }
}

void main() {

}
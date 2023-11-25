

class Ticket {
  int age;

  factory Ticket(int age) {
    if (age >= 18) {
      return AdultTicket(age);
    } else {
      return ChildTicket(age);
    }  // end-if
  }  // end factory Ticket(int age)

  Ticket._withAge(this.age);
}  // end class Ticket

class AdultTicket extends Ticket {
  AdultTicket(int age) : super._withAge(age);
} // end class AdultTicket extends Ticket

class ChildTicket extends Ticket {
  ChildTicket(int age) : super._withAge(age);
}  // class ChildTicket extends Ticket

void main() {
  Ticket t = Ticket(17);
  print(t is ChildTicket);  // prints true
}
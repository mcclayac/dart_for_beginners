

class Singleton {
  static Singleton? _instance;

  // private constructor
  Singleton._();

  factory Singleton.getInstance() {
    if (_instance == null) {
      _instance = Singleton._();
    }  // end-if
    return _instance!;
  }  // end factory Singleton.getInstance()

  printHello() => print('Hello World');

}  // end Singleton

void main() {

  var singleton = Singleton.getInstance();
  singleton.printHello();

}
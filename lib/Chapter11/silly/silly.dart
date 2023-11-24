

class A {
  void silly() => print("A's Silly");
}

class B extends A {
  @override
  void silly() => print("B's silly");

  void callASilly() => super.silly();
}

void main() {
  B b = B();
  b.callASilly();  // A's Silly
}

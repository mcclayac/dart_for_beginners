

class A {
  void silly() => print('A\' Silly');
}  // end class A {

class B {
  void awesome() => print("B's awesome");
}  // end class B {

class C implements A, B {
  @override
  void awesome() => print("C's awesome");

  @override
  void silly() => print("C's silly");
} // end class C implements A, B {

class D extends B implements A {
  void silly() => print("D's Silly");
}

void main() {
  A c = C();
  c.silly();  // prints C's Silly
  (c as C).awesome();  // Casting // runs, but generates warning; prints C's Awesome
  D d = D();
  d.awesome();  // prints B's Awesome
  d.silly();  // prints D's Silly

}
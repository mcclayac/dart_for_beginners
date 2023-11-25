

// You can create your own annotations
// by creating classes that have a const
// constructor.
class owner {
  final String name;

  const owner(this .name);
}

@owner("John")
void importantFunc1() {
  return ;
}

@owner("David")
void main() {
  importantFunc1();
}


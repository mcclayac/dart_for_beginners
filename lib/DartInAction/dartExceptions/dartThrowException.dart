


void testAge(int age) {
  if (age < 0 ) {
    throw FormatException();
  }
}

// Throwing an exception - finally clause
void main() {
  int a = -2;
  try {
    testAge(-2);
  } catch (e) {
    print('Age cannot be negative');
  } finally {
    print('the age listed was $a');
  }
}
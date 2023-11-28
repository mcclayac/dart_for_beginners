


Future<void> fetchUserOrder() {
  // Image going to get order
  return Future.delayed(const Duration(seconds: 4), ()=> print('Large Latte'));
}

Future<void> fetchUserOrderThowException() {
  // Image going to get order
  return Future.delayed(const Duration(seconds: 4),
          ()=> throw Exception('Logout failed: user ID is invalid'));
}


void main() {
  fetchUserOrder();
  print('Fetching user order');

  print('Future that throws an Exception');
  fetchUserOrderThowException();

}


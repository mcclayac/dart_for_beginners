

String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is $order';
}

Future<String> fetchUserOrder() =>
    // image slow process
    Future.delayed(
      const Duration(seconds: 4),
        () => 'Large Latte',
    );

void main() {
  print('Fetch user order ....');
  print(createOrderMessage());
}
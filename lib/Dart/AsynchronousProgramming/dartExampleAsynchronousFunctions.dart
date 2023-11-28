

Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is $order';
}

Future<String> fetchUserOrder() =>
    // image slow process
Future.delayed(
  const Duration(seconds: 4),
      () => 'Large Latte',
);

Future<void> main() async {
  print('Fetch user order ....');
  print(await createOrderMessage());
}
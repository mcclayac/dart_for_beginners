

Future<void> fetchData() async {
  // Simulate fetching data from a network
  await Future.delayed(Duration(seconds: 4));
  print('Data fetched');
}

// Future asynchronous fuction
void main() async {
  print('Start');
  await fetchData();
  print('End');
}

import 'dart:convert';


void main() {
  String jsonStr = '{"name":"subhash","age":30}';
  Map <String, dynamic> user = json.decode(jsonStr);
  print('Name:${user['name']}, Age:${user['age']}');
}


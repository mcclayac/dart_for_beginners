import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';

void main() async {
  
  final handler = const Pipeline()
      .addMiddleware(logRequests())
      .addHandler(_helloHandler);
  
  final  server = await serve(handler,'localhost',9000);

  print('Server listening on port ${server.port}');
  
}  // end main

Response _helloHandler(Request request) {
  return Response.ok('Hello, Shelf!');
}
import 'dart:async';


void main() {

  final controller = StreamController<int>();

  final stream = controller.stream;

  stream.listen((data) {
    print('Recieved: $data');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(10);
  controller.close();
  // controller.sink.add(20);
}
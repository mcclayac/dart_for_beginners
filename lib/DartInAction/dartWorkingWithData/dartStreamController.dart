
import 'dart:async';


void main() {

  final controller = StreamController<int>();

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(10);
  controller.sink.add(20);
  controller.sink.add(200);
  controller.sink.add(30000);

  // close the stream
  controller.close();
  // controller.sink.add(20);

  controller.stream.listen(
          (data) => print('Received: $data'),
          onError: (error) => print('Error: $error'),
          onDone: () => print('Stream is closed'),
  );

  // String Controller
  final controllerString = StreamController<String>();

  controllerString.sink.add('Tony');
  controllerString.sink.add('Maxine');
  controllerString.sink.add('Alexis');
  controllerString.sink.add('Moses');
  controllerString.sink.add('Angelo');
  controllerString.sink.add('Kristin');

  // closing the string Stream
  controllerString.close();

  controllerString.stream.listen(
     (data) => print('String : $data'),
    onError:(error) => print('Error: $error'),
    onDone: () => print('String Stream is closed'),
  );

}
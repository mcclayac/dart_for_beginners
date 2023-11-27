import 'dart:isolate';


void isolateFunction(SendPort sendPort) {
  sendPort.send('Message from isolate');
}


void main() async {
    ReceivePort receivePort = ReceivePort();
    Isolate.spawn(isolateFunction, receivePort.sendPort);

    receivePort.listen((message) {
      print('Recieve: $message');
    });
  
}


import "WritingInstrument.dart";

class Pen extends WritingInstrument {

  void explode() {
    print('Ink everywhere!');
    lifeRemaining = 0;
  }
}


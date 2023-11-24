

class WritingInstrument {
  int lifeRemaining = 100;
  String color = "black";

  void write(String what) {
    if (lifeRemaining <= 0 ) {
      return;
    }  // end-if
    print(what);
    lifeRemaining--;
  } // end-write


  @override
  String toString() {
      return "I am a $color writing instrument with $lifeRemaining percent of my life remaining.";
  }

} //end WritingInstrument
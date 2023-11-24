
import "WritingInstrument.dart";

class Pencil extends WritingInstrument {

  int eraserLife = 100;

  void erase(String toErase) {
    if (eraserLife <= 0 ) {
      return;
    }  // end-if if (eraserLife <= 0 )

    print('Removed $toErase');
    eraserLife--;
  }// end - void erase(String toErase)
}  // end-Pencil
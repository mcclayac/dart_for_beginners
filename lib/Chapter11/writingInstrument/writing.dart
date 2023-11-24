
import 'package:dart_for_beginners/Chapter11/writingInstrument/WritingInstrument.dart';

import 'Pen.dart';
import 'Pencil.dart';

void main() {

  Pen pen = Pen();
  pen.color = "blue";
  pen.write('Hey!');

  Pencil pencil = Pencil();
  pencil.write('Yo!');
  pen.explode();
  print(pen is WritingInstrument);  // true
  print(pencil is WritingInstrument); // true
  print('pen is WritingInstrument = ${pen is WritingInstrument}');
  print('pencil is WritingInstrument = ${pencil is WritingInstrument}'); // true

  // pencil.explode();   // error

  WritingInstrument wi = WritingInstrument();
  print('wi is Pen = ${wi is Pen}');  // false
  print('wi is Pencil = ${wi is Pencil}'); // false
  print('wi is WritingInstrument = ${wi is WritingInstrument}');  // true

  print('\n');
  Pencil myPencil = Pencil();
  String temp = myPencil.toString();
  print('myPencil = ${myPencil}.');
  print('temp = ${temp}.');

  print('\n');
  Pencil myPencil2 = Pencil();
  myPencil2.color = "orange";
  print(myPencil2);
  Pen myPen2 = Pen();
  myPen2.explode();
  print(myPen2);
}
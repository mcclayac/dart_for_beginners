
import 'dart:math';
import 'dart:io';


abstract class Shape {
  double get perimeter;
  double get area;
  String get description;
} // end- abstract class Shape


class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double get area => pi * (radius * radius);

  @override
  String get description => "I am a circle with radius $radius";

  @override
  double get perimeter => radius * 2 * pi;
}  // end - Circle

class Rectangle extends Shape {
  double length;
  double width;
  Rectangle(this.length,this.width);

  @override
  double get perimeter => length * 2 + width * 2;

  @override
  double get area => length * width;

  @override
  String get description => "I am a rectangle with length $length and width $width.";
}  // end- Rectangle

class Square extends Rectangle {
  Square(double side) : super(side, side);

  String get description => "I am a square with sides of length $length.";
} // end-Square

void main() {
  Shape randomShape;
  Random rand = Random();
  int choice = rand.nextInt(3);

  switch(choice) {
    case 0:
      randomShape = Circle(rand.nextInt(10) + 1.0);
      break;
    case 1:
      randomShape = Rectangle(rand.nextInt(10) + 1.0, rand.nextInt(10) + 1.0);
      break;
    case 2:
      randomShape = Circle(rand.nextInt(10) + 1.0);
      break;
    default:
      randomShape = Circle(rand.nextInt(10) + 1.0);
  }  // end-switch

  String? inTemp;
  double userAnswer;
  print(randomShape.description);

  print('What is the area of the shape');
  inTemp = stdin.readLineSync();
  try {
    userAnswer = double.parse(inTemp!);
  } on FormatException {
    print('Could not interpret input.');
    return;
  } // end try

  if (userAnswer.roundToDouble() == randomShape.area.roundToDouble()) {
    print("Good Job");
  } else {
    print("Wrong, it's ${randomShape.area}!");
  }  // end-if

  print("What is the perimeter of the shape?");
  inTemp = stdin.readLineSync();
  try {
    userAnswer = double.parse(inTemp!);
  } on FormatException {
    print('Could not interpret');
    return;
  }  // end-try

  if(userAnswer.roundToDouble() == randomShape.perimeter.roundToDouble()) {
    print("Good Job!");
  } else {
    print("Wrong, it's ${randomShape.perimeter}!");
  }  // end-if
} //end main
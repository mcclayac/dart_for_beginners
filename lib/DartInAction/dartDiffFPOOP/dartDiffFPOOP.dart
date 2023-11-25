



class Rectangle {
  double width;
  double height;

  Rectangle(this.width,this.height);

  double calculateArea() => width * height;
}
void main() {

  Rectangle rec = Rectangle(5.0,4.0);
  double area = rec.calculateArea();
  print('Area = $area');
}
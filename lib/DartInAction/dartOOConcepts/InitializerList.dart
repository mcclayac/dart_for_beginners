


class Rectangle {

  int width;
  int height;

  // InitializerList
  Rectangle(int w, int h)
    : width = w,
      height = h {
    print('Creating Rectangle width = $width, height = $height');
  }
}

void main() {

  Rectangle rec = Rectangle(3, 6);


}


class Shouter <T> {
  int numberOfTimes;
  T thingToShout;

  Shouter(this.numberOfTimes, this.thingToShout);

  void shout() {
    for (int i = 0; i < numberOfTimes; i++) {
      print('#${i + 1} - $thingToShout');
    }
  }
}

void main() {
  Shouter<int> myShouter1 = Shouter(4, 34);
  myShouter1.shout();

  Shouter<String> myShouter2 = Shouter(7, "Tony");
  myShouter2.shout();
}
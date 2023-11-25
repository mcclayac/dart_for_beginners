

void main(List<String> arguments) {

  StringBuffer sb = StringBuffer('as dark as a Dungeon.');

  for(int x = 0;x <= 10; x++) {
    sb.write("!");
    print('$x: $sb');
  }
}


// Old way of implementing Singleton Pattern

// class SimpleLogger {
//   static SimpleLogger logger;
//
//   factory SimpleLogger() {
//     if (SimpleLogger.logger == null) {
//       SimpleLogger.logger = SimpleLogger._internal();
//     }
//     return SimpleLogger.logger;
//   }
//
//   SimpleLogger._internal();   // private constructor
//
//   void log(Object o) {
//     print(o);
//   }
// }
//
// void main() {
//   SimpleLogger myLogger = new SimpleLogger();
//   SimpleLogger myLogger2 = new SimpleLogger();
//   print(myLogger == myLogger2);  // prints true
// }
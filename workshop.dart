import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
  print("running");
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // Variables
  String name = "My Name";
  int age = 30;
  double amount = 3.156;
  bool isBeginner = true;

  // Comparison
  /*
  * 6 == 6 -> true (Equal to)
  * 6 != 3 -> true (not Equal)
  * 3 > 2 -> true (greater then)
  * etc.
  * */

  // Logical Operators
  /*
  * && --> AND
  * || --> OR
  * ! --> NOT
  * */

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}


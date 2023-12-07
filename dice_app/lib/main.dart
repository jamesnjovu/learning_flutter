import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    // backgroundColor: Color.fromARGB(255, 95, 117, 228),
    body: GradientContainer.purple(),
    // GradientContainer(
    //   Color.fromARGB(255, 16, 54, 104),
    //   Color.fromARGB(255, 24, 38, 56),
    // ),
  )));
}

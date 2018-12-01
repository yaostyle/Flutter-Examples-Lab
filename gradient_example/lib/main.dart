import 'package:flutter/material.dart';
import 'package:gradient_example/utils.dart' as utils;

void main() {
  runApp(MaterialApp(
    title: "Gradient Example",
    home: GradientEffect(),
  ));
}

Widget GradientEffect() {
  return Scaffold(
    appBar: AppBar(title: Text("Gradient Example")),
    body: Container(
      child: Center(
        child: Text(
          "Hello World!",
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(gradient: utils.getCustomGradient()),
    ),
  );
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Material App's Hello World Example",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Material App's Hello World Example"),
      ),
      body: Container(
        child: Center(
          child: Text("Hello World!"),
        ),
      ),
    ),
  ));
}

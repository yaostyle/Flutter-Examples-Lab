import 'package:flutter/material.dart';
import './utils.dart' as utils;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Custom Fonts Example",
    home: Scaffold(
      appBar: AppBar(title: Text("Custom Fonts Example")),
      body: Container(
        child: Center(
          child: Text("The quick brown fox jumps over the lazy dog...",
              textAlign: TextAlign.center,
              style: utils.getCustomFontTextStyle()
          ),
        ),
      ),
    ),
  ));
}

import 'package:flutter/material.dart';
import 'package:custom_fonts_example/utils.dart' as utils;

void main() {
  runApp(MaterialApp(
    title: "Custom Fonts Example",
    home: MyApp(),
  ));
}

Widget MyApp() {
  return Scaffold(
    appBar: AppBar(title: Text("Custom Fonts Example")),
    body: Container(
      child: Center(
        child: Text(
          "Fluttery",
          textAlign: TextAlign.center,
          style: utils.getCustomFontTextStyle(),
        ),
      ),
    ),
  );
}

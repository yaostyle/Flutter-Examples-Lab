import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Screen",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Splash Screen Example"),
        ),
        body: Center(
          child: Text("Hello world"),
        ),
      ),
    );
  }
}

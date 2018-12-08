import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  AlertDialog dialog = AlertDialog(
    content: Text("Hello world!", style: TextStyle(fontSize: 30.0)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alert Dialog Example")),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("Press me to alert."),
            onPressed: () {
              showDialog(
                  context: context, builder: (_) => dialog);
            },
          ),
        ),
      ),
    );
  }
}

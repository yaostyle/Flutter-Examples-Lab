import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ContactPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar Example"),
      ),
      body: Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Show SnackBar"),
      onPressed: () => pressMe(context),
    );
  }
}

void pressMe(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text("Hello! I am SnackBar!"),
    duration: Duration(seconds: 3),
    action: SnackBarAction(
        label: "Hit Me (Action)",
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Hello! I am shown because you pressed Action!"),
          ));
        }),
  ));
}
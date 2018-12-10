import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Image Example"),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Hello world",
            style: TextStyle(color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('data_repo/img/bg1.jpg'), fit: BoxFit.cover)),
      ),
    );
  }
}

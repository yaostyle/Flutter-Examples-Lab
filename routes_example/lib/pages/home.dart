import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Home Page\nClick on below icon to goto About Page",
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
              IconButton(
                icon: Icon(
                  Icons.info,
                  color: Colors.blue,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/about');
                },
                iconSize: 80.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

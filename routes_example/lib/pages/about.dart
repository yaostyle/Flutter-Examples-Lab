import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const String routeName = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "About Page\nClick on below icon to goto Home Page",
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/');
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

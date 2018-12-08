import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Presist Key Value",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var nameOfApp = "Presist Key Value Example";

  var counter = 0;

  var key = "counter";

  @override
  void initState() {
    super.initState();
    _loadSavedDate();
  }

  Future<dynamic> _loadSavedDate() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      counter = (prefs.getInt(key) ?? 0);
    });
  }

  Future<dynamic> _onIncrementHit() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      counter = (prefs.getInt(key) ?? 0) + 1;
    });

    prefs.setInt(key, counter);
  }

  Future<dynamic> _onDecrementHit() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      counter = (prefs.getInt(key) ?? 0) - 1;
    });

    prefs.setInt(key, counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Presist Key Value Example"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$counter',
              textScaleFactor: 10.0,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            RaisedButton(
              onPressed: _onIncrementHit,
              child: Text("Increment Counter"),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            RaisedButton(
              onPressed: _onDecrementHit,
              child: Text("Decrement Counter"),
            )
          ],
        ),
      ),
    );
  }
}

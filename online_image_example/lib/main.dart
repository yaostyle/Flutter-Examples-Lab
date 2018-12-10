import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Online Image"),
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Image.network("https://avatars2.githubusercontent.com/u/14081948?s=460&v=4"),
                
              ],
            ),
          ),
        ),
    );
  }
}

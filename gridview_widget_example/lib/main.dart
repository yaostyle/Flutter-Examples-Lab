import 'package:flutter/material.dart';
import 'package:gridview_widget_example/gridview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final MyGridView myGridView = new MyGridView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("GridView Example"),
        ),
        body: myGridView.build(),
      ),
    );
  }
}

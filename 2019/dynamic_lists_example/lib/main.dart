import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dynamic Lists',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ListExamplePage(),
    );
  }
}

class ListExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Example'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int position) =>
              //_getRowWithBoxDecoration(pos)
              _getRowWithDivider(position),
          itemCount: 10,
        ));
  }
}

Widget _getRowWithDivider(int i) {
  var children = <Widget>[
    Padding(
      padding: EdgeInsets.all(10.0),
      child: Text('Row $i'),
    ),
    Divider(
      height: 5.0,
    ),
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: children,
  );
}

Widget _getRowWithBoxDecoration(int i) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[100]))),
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Text('Row $i'),
    ),
  );
}

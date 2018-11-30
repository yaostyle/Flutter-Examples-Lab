import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHome(),
    theme: ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.amberAccent,
      backgroundColor: Colors.black12,
    ),
  ));
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theming Example"),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black87),
        child: Center(
          child: Container(
            color: Theme.of(context).accentColor,
            child:
                Text("Hello World", style: Theme.of(context).textTheme.title),
          ),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(accentColor: Colors.pinkAccent),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

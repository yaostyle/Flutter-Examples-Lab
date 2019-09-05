import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Nav Demo',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: BottomNavExample(),
    );
  }
}

class BottomNavExample extends StatefulWidget {
  @override
  _BottomNavExampleState createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body('Index: $index'),
      bottomNavigationBar: TwoItemBottomNavBar(
        index: index,
        callback: (newIndex) => setState(
          () => this.index = newIndex,
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  Body(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.display2,
        ),
      ),
    );
  }
}

class TwoItemBottomNavBar extends StatelessWidget {
  TwoItemBottomNavBar({this.index, this.callback});
  final int index;
  final Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: callback,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('First'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Secons'),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bottom_navbar_example/tabs/first.dart';
import 'package:bottom_navbar_example/tabs/second.dart';
import 'package:bottom_navbar_example/tabs/third.dart';


void main() {
  runApp(new MaterialApp(
      title: "Using Tabs",
      home: MyHome()));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();

    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using Bottom Navigation Bar"),
        backgroundColor: Colors.blue,
      ),

      body: TabBarView(

        children: <Widget>[FirstTab(), SecondTab(), ThirdTab()],
        controller: controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: <Tab>[
            Tab(
              icon: Icon(Icons.favorite),
            ),
            Tab(
              icon: Icon(Icons.adb),
            ),
            Tab(
              icon: Icon(Icons.airport_shuttle),
            ),
          ],
          controller: controller,
        ),
      ),
    );
  }
}

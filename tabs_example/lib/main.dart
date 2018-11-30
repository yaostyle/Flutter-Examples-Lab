import 'package:flutter/material.dart';
import 'package:tabs_example/tabs/first.dart';
import 'package:tabs_example/tabs/second.dart';
import 'package:tabs_example/tabs/third.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Tabs Example",
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => new MyHomeState();
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(
          text: "Fav",
          icon: Icon(Icons.favorite),
        ),
        Tab(
          text: "ADB",
          icon: Icon(Icons.adb),
        ),
        Tab(
          text: "Airport",
          icon: Icon(Icons.airport_shuttle),
        )
      ],
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      children: tabs,
      controller: controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabs Example"),
        backgroundColor: Colors.blue,
        bottom: getTabBar(),
      ),
      body: getTabBarView(<Widget>[First(), Second(), Third()]),
    );
  }
}

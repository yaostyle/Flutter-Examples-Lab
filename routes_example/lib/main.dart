import 'package:flutter/material.dart';
import 'package:routes_example/pages/about.dart';
import 'package:routes_example/pages/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    title: "Routes Example",
    routes: {
      '/' : (context) => HomePage(),
      AboutPage.routeName : (context) => AboutPage(),
    },
  ));
}

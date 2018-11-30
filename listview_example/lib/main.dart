import 'package:flutter/material.dart';
import 'package:listview_example/contact_page.dart';

void main() {
 runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
   home: Scaffold(
     appBar: AppBar(title: Text("ListView Example"),),
     body: ContactPage(),
   ),
 ));
}
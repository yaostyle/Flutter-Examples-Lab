import 'package:flutter/material.dart';
import 'package:nav_drawer_example/screens/account.dart';
import 'package:nav_drawer_example/screens/home.dart';
import 'package:nav_drawer_example/screens/settings.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
    routes: <String, WidgetBuilder> {
      SettingsScreen.routeName: (BuildContext context) => SettingsScreen(),
      AccountScreen.routeName: (BuildContext context) => AccountScreen(),
    }
  ));
}

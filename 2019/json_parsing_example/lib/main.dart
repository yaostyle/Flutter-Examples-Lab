import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON Parsing Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: UserListPage(),
    );
  }
}

class UserListPage extends StatefulWidget {
  UserListPage({Key key, this.url}) : super(key: key);

  final String url;

  @override
  _UserListPageState createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  var userWidgets = <Widget>[];

  @override
  void initState() {
    super.initState();
    _getUsers();
  }

  _getUsers() async {
    List<Widget> widgets = [];
    var userList = await fetchAndParseUsers();
    userList.forEach((user) => widgets.add(ListTile(
          title: Text(user.name),
          subtitle: Text(user.address.toString()),
        )));

    setState(() {
      this.userWidgets = widgets;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Example'),
      ),
      body: ListView(
        children: userWidgets,
      ),
    );
  }
}

final jsonEndpoint = 'https://jsonplaceholder.typicode.com/users';

class User {
  final String name;
  final String userName;
  final Address address;

  User.fromJsonMap(Map jsonMap)
      : name = jsonMap['name'],
        userName = jsonMap['username'],
        address = Address.fromJsonMap(jsonMap['address']);

  String toString() {
    return 'name: $name\nuser name: $userName\naddress: $address';
  }
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;

  Address.fromJsonMap(Map jsonMap)
      : street = jsonMap['street'],
        suite = jsonMap['suite'],
        city = jsonMap['city'],
        zipcode = jsonMap['zipcode'];

  String toString() {
    return '$street, $suite, $city, $zipcode';
  }
}

Future<List<User>> fetchAndParseUsers() async {
  var res = await http.get(jsonEndpoint);
  var jsonStr = res.body;
  var parsedUserList = jsonDecode(jsonStr);
  var userList = <User>[];

  parsedUserList.forEach((parseUser) {
    userList.add(User.fromJsonMap(parseUser));
  });
  return userList;
}

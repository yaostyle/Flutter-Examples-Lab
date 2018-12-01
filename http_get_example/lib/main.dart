import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHttpGetData(),
  ));
}

class MyHttpGetData extends StatefulWidget {
  @override
  MyHttpGetDataState createState() => MyHttpGetDataState();
}

class MyHttpGetDataState extends State<MyHttpGetData> {
  final String url = "https://swapi.co/api/people";
  List data;

  Future<String> getJSONData() async {
    var response = await http.get(
        Uri.encodeFull(url), headers: {"Accept": "application/json"});

    print(response.body);

    setState(() {
      var dataConvertedToJSON = json.decode(response.body);
      data = dataConvertedToJSON['results'];
    });
    return "Successful";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Retrieve JSON Data via HTTP GET")),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Card(
                    child: Container(
                      child: Text(
                        data[index]['name'],
                        style: TextStyle(
                            fontSize: 20.0, color: Colors.lightBlueAccent),
                      ),
                      padding: const EdgeInsets.all(15.0),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    this.getJSONData();
  }

}

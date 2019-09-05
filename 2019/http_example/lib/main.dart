import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(NetworkApp());

class NetworkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: NetworkBody()),
    );
  }
}

class NetworkBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Quotation(url: 'https://quotes.rest/qod.json'),
          Padding(
            padding: EdgeInsets.only(top: 50.0),
          ),
          Image.network(
              'https://flutter.dev/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png'),
        ],
      ),
    );
  }
}

class Quotation extends StatefulWidget {
  Quotation({Key key, this.url}) : super(key: key);

  final String url;

  @override
  _QuotationState createState() => _QuotationState();
}

class _QuotationState extends State<Quotation> {
  String data = 'Loading ...';

  @override
  void initState() {
    super.initState();
    _get();
  }

  _get() async {
    final res = await http.get(widget.url);
    setState(() {
      data = _parseQuoteFromJson(res.body);
    });
  }

  String _parseQuoteFromJson(String jsonStr) {
    final jsonQuote = json.decode(jsonStr);
    return jsonQuote['contents']['quotes'][0]['quote'];
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.center,
    );
  }
}

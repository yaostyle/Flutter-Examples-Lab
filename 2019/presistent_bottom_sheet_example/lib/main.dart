import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Presistent Bottom Sheet Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PersistentBottomSheetController _controller;
  bool _isSheetOpen = false;

  _updateButtonState() async {
    if (_isSheetOpen) {
      setState(() => _isSheetOpen = false);
      _controller.close();
    } else {
      setState(() => _isSheetOpen = true);
      await _controller.closed;
      setState(() => _isSheetOpen = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text(
            _isSheetOpen ? 'Close the bottom sheet' : 'Open the bottom sheet'),
        onPressed: () {
          if (!_isSheetOpen) _controller = _showBottomSheet(context);
          _updateButtonState();
        },
      ),
    );
  }
}

PersistentBottomSheetController _showBottomSheet(BuildContext context) {
  return showBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Colors.teal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'I will presist until you close me',
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(color: Colors.white),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        );
      });
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Tips Calculator Example", home: TipsCalculator()));
}

class TipsCalculator extends StatelessWidget {
  double billAmount = 0.0;
  double tipPercentage = 0.0;

  @override
  Widget build(BuildContext context) {
    TextField billAmountField = TextField(
        keyboardType: TextInputType.number,
        onChanged: (String value) {
          try {
            billAmount = double.parse(value);
          } catch (exception) {
            billAmount = 0.0;
          }
        },
        decoration: InputDecoration(labelText: "Bill amount(\$)"),
    );

    TextField tipPercentageField = TextField(
      decoration: InputDecoration(labelText: "Tip %", hintText: "15"),
      keyboardType: TextInputType.number,
      onChanged: (String value) {
        try {
          tipPercentage = double.parse(value);
        } catch (exception) {
          tipPercentage = 0.0;
        }
      },
    );

    RaisedButton calculateButton = RaisedButton(
      child: Text("Calculate"),
      onPressed: () {
        double calculatedTip = billAmount * tipPercentage / 100.0;
        double total = billAmount + calculatedTip;

        AlertDialog dialog = AlertDialog(
          content: Text("Tip: \$$calculatedTip \n"
          "Total: \$$total")
        );

        showDialog(context: context, builder: (_) => dialog);
      },
    );

    Container container = Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[billAmountField, tipPercentageField, calculateButton],
      ),
    );

    Scaffold scaffold = Scaffold(
      appBar: AppBar(title: Text("Tips Calculator Example")),
      body: container,
    );

    return scaffold;
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Stepper Example",
    home: MyHome(),
  ));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  int current_step = 0;

  List<Step> my_steps = [
    Step(title: Text("Step 1"), content: Text("Hello!"), isActive: true),
    Step(
        title: Text("Step 2"),
        content: Text("World!"),
        state: StepState.editing,
        isActive: true),
    Step(title: Text("Step 3"), content: Text("Hello World!"), isActive: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stepper Example"),
        ),
        body: Container(
          child: new Stepper(
            currentStep: this.current_step,
            steps: my_steps,
            type: StepperType.vertical,
            onStepTapped: (step) {
              setState(() {
                current_step = step;
              });
              print("onStepTapped: " + step.toString());
            },
            onStepCancel: () {
              setState(() {
                if (current_step > 0) {
                  current_step = current_step - 1;
                } else {
                  current_step = 0;
                }
              });

              print("onStepCancel: " + current_step.toString());
            },
            onStepContinue: () {
              setState(() {
                if (current_step < my_steps.length - 1) {
                  current_step = current_step + 1;
                } else {
                  current_step = 0;
                }
              });
              print("onStepContinue: " + current_step.toString());
            },
          ),
        ));
  }
}

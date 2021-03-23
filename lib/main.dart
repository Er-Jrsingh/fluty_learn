import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FlutyLearn",
      color: Colors.tealAccent,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static int currentVal = 0;

  List<Step> _mySteps() {
    List<Step> _steps = [
      Step(
          title: Text(
            "Step 1",
            style: TextStyle(color: Colors.pink, fontSize: 20),
          ),
          subtitle: Text(
            "Name",
            style: TextStyle(color: Colors.indigoAccent, fontSize: 10),
          ),
          content: TextField(),
          isActive: currentVal >= 0),
      Step(
          title: Text(
            "Step 2",
            style: TextStyle(color: Colors.pink, fontSize: 20),
          ),
          subtitle: Text("Email",
              style: TextStyle(color: Colors.indigoAccent, fontSize: 10)),
          content: TextField(),
          isActive: currentVal >= 1),
      Step(
          title: Text(
            "Step 3",
            style: TextStyle(color: Colors.pink, fontSize: 20),
          ),
          subtitle: Text(
            "Password",
            style: TextStyle(color: Colors.indigoAccent, fontSize: 10),
          ),
          content: TextField(),
          isActive: currentVal >= 2),
    ];
    return _steps;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STEPPER"),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Stepper(
          steps: _mySteps(),
          currentStep: currentVal,
          onStepTapped: (step) {
            setState(() {
              currentVal = step;
            });
          },
          onStepContinue: () {
            setState(() {
              if (currentVal >= 0 && currentVal < _mySteps().length - 1) {
                currentVal = currentVal + 1;
              } else {
                // currentVal=currentVal;
                print("This Is Last Step");
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (currentVal > 0) {
                currentVal = currentVal - 1;
              } else {
                // currentVal=currentVal;
                print("This Is First Step");
              }
            });
          },
        ),
      ),
    );
  }
}

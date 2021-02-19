import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FlutyLearn",
      theme: ThemeData(
        backgroundColor: Colors.deepPurple,
        fontFamily: "cursive",
      ),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FlutyLearn"),
        ),
        backgroundColor:Colors.white,
        body: Center(
          child: Wrap(

            direction: Axis.vertical,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            verticalDirection: VerticalDirection.up,
            spacing: 30.0,
            runSpacing: 20.0,
            children: [
              RaisedButton(
                onPressed: null,
                child: Text("Btn1"),
                color: Colors.pink,
              ),
              RaisedButton(
                onPressed: null,
                child: Text("Btn2"),
              ),
              RaisedButton(
                onPressed: null,
                child: Text("Btn3"),
              ),
              RaisedButton(
                onPressed: null,
                child: Text("Btn4"),
              ),
              RaisedButton(
                onPressed: null,
                child: Text("Btn5"),
              ),
               RaisedButton(
                onPressed: null,
                child: Text("Btn1"),
                color: Colors.pink,
              ),
              RaisedButton(
                onPressed: null,
                child: Text("Btn2"),
              ),
              RaisedButton(
                onPressed: null,
                child: Text("Btn3"),
              ),
              RaisedButton(
                onPressed: null,
                child: Text("Btn4"),
              ),
              RaisedButton(
                onPressed: null,
                child: Text("Btn5"),
              ),
               RaisedButton(
                onPressed: null,
                child: Text("Btn1"),
                color: Colors.pink,
              ),
              RaisedButton(
                onPressed: null,
                child: Text("Btn2"),
              ),
              RaisedButton(
                onPressed: null,
                child: Text("Btn3"),
              ),
              RaisedButton(
                onPressed: null,
                child: Text("Btn4"),
              ),
              RaisedButton(
                onPressed: null,
                child: Text("Btn5"),
              ),
            ],
          ),
        ));
  }
}

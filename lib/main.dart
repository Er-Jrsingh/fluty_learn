import 'package:flutter/material.dart';
import 'details.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Multi Screen",
    home: MyNavigatin(),
  ));
}

class MyNavigatin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyNavigation();
  }
}

class _MyNavigation extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nav Tut"),
        ),
        body: Center(
            child: RaisedButton(
                child: Text("Nexty"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyPageDetails(),
                      ));
                })));
  }
}

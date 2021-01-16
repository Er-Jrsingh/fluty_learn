import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FlutyLearn",
      theme: ThemeData(
        backgroundColor: Colors.deepPurple
        ,fontFamily: "cursive",
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
    );
  }
}

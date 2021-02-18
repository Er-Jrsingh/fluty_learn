import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Constrained Box",
      theme: ThemeData(
        backgroundColor: Colors.red,
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
        backgroundColor: Colors.greenAccent,
        title: Text("Constrained Box "),
        centerTitle: true,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Container(
            width: 600,
            height: 600,
            color: Colors.pinkAccent,
          ),
        ),
      ),
    );
  }
}

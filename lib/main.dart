import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ButtonBar",
      theme: ThemeData(
        backgroundColor: Colors.deepPurple,
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
        title: Text("ButtonBar"),centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              disabledColor: Colors.pink,
              child: Text(
                "Raised",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: null,
            ),
            IconButton(
              iconSize: 50,
              disabledColor: Colors.tealAccent,
              icon: Icon(
                Icons.star,
              ),
              onPressed: null,
            ),
            OutlinedButton(
              child: Text(
                "Outline",
                style: TextStyle(color: Colors.deepPurple),
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}

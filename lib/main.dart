import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MaterilApp Title",
      theme: ThemeData(primaryColor: Colors.teal[400]),
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: Text(
            "Hello World !!!",
          ),
          centerTitle: true,
        ),
        body: Material(
          color: Colors.tealAccent,
          child: Center(
            child: Text(
              "Welcome To Scaffold Tutorial",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.home, color: Colors.white),
          backgroundColor: Colors.teal[800],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    ),
  );
}

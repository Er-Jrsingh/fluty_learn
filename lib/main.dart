import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FlutyLearn",
      color: Colors.black,
      home: MyApp(),
    ),
  );
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  List<Widget> containers = [
    Center(
      child: Text("Recieved Message"),
    ),
    Center(
      child: Text("Send Message"),
    ),
    Center(
      child: Text("Delete Message"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          centerTitle: true,
          backgroundColor: Colors.pink,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.message),
              ),
              Tab(
                icon: Icon(Icons.send),
              ),
              Tab(
                icon: Icon(Icons.delete),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: containers,
          dragStartBehavior: DragStartBehavior.start,
        ),
      ),
    );
  }
}

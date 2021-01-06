import 'package:flutter/material.dart';
import 'package:fluty_learn/second_page.dart';
import 'package:fluty_learn/third_page.dart';
import 'first_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Multi Screen",
      routes: {
        '/first': (context) => MyPageFirst(),
        '/second': (context) => MyPageSec(),
        '/third': (context) => MyPageThird(),
      },
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: MyNavigatin(),
    ),
  );
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
        title: Text(
          "Navigation Screens",
          style: TextStyle(fontFamily: "Cursive"),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(children: [
            RaisedButton(
              color: Colors.indigoAccent,
              child: Text("1st Page"),
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
            ),
            SizedBox(height: 50.0),
            RaisedButton(
              color: Colors.tealAccent,
              child: Text("2nd Page"),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
            SizedBox(height: 50.0),
            RaisedButton(
              color: Colors.greenAccent,
              child: Text("3rd Page"),
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
            SizedBox(height: 50.0),
          ]),
        ),
      ),
    );
  }
}

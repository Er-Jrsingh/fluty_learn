import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Curved Navigation",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String txt = " ";
  Color bgColor = Colors.deepPurpleAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Curved Navigation"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.deepPurpleAccent,
          height: 50,
          items: <Widget>[
            Icon(Icons.login, size: 15),
            Icon(Icons.home, size: 15),
            Icon(Icons.logout, size: 15),
          ],
          onTap: (index) {
            if (index == 0) {
              setState(() {
                txt = "Hola! I'm Login";
                bgColor = Colors.pinkAccent;
              });
            }

            if (index == 1) {
              setState(() {
                txt = " Bonjour !!! Welcome To Home ";
                bgColor = Colors.deepPurpleAccent;
              });
            }

            if (index == 2) {
              setState(() {
                txt = "Ohh.. Dear!! I'm Gone!!!..";
                bgColor = Colors.deepPurpleAccent[300];
              });
            }
          },
        ),
        backgroundColor: bgColor,
        body: Center(
          child: Container(
            child: Text(txt),
          ),
        ));
  }
}
  
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Responsive",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Responsive"),
        ),
        body: OrientationBuilder(builder: (context, orientaion) {
          if (orientaion == Orientation.portrait) {
            return potrait();
          } else {
            return landscapes();
          }
        }));
  }

  Widget potrait() {
    return Container(
        decoration: BoxDecoration(color: Colors.pink[500]),
        child: Center(child: Text("Hola! I'm Potrait")));
  }

  Widget landscapes() {
    return Container(
        decoration: BoxDecoration(color: Colors.pinkAccent),
        child: Center(child: Text("Hola! I'm Landscape")));
  }
}

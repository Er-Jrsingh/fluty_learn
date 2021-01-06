import 'package:flutter/material.dart';
import 'package:fluty_learn/snack_body.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Snack !!!!",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Snacky",
        ),
        backgroundColor: Colors.indigoAccent,
      ),

      /* Snack Bar Solution 1  - By Moving Body Into Another File*/

      body: SnackyB()
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Homi(),
    ),
  );
}

class Homi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Row(children: [
          Center(
            child: Text(
              "H",
              style:TextStyle(color: Colors.white,fontSize: 40),
            ),
          ),
          Baseline(
            baselineType: TextBaseline.alphabetic,
            baseline: 50,
            child: Text(
              "2",
               style:TextStyle(color: Colors.white,fontSize: 30),
            ),
          ),
          Text(
              "O",
              style:TextStyle(color: Colors.white,fontSize: 40),
            ),
        ],),
      ),
    );
  }
}

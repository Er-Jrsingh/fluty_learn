import 'package:flutter/material.dart';

void main() {
  runApp(Material(
    color: Colors.deepOrange,
    child: Center(
        child: Text("I Am Jitu Thakur",
            textDirection: TextDirection.ltr, style: myFont())),
  ));
}

TextStyle myFont() {
  return TextStyle(
      fontFamily: 'Anurati',
      color: Colors.white,
      fontSize: 40,
      fontWeight: FontWeight.bold,
      background: Paint()
        ..color = Colors.tealAccent
        ..style = PaintingStyle.stroke,
      letterSpacing: 10.0,
      wordSpacing: 5.0,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.overline,
      decorationColor: Colors.white);
}

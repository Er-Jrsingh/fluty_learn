import 'package:flutter/material.dart';

void main() {
  runApp(
    Material(
      color:Colors.deepOrange,
      child: Center(
          child: Text(
              "I Am Jitu Thakur",
              textDirection:TextDirection.ltr,
              style: TextStyle(color: Colors.white , fontSize: 30,fontWeight:FontWeight.bold,)
          )
      ),
    )
  );
}

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"MaterilApp Title",
      home:Scaffold(
          appBar: AppBar(title:Text("Hello World!!!"),),
          body:Material(
              color:Colors.tealAccent,
              child:Center(
                child:Text(
                  "Welcome To Scaffold Tutorial",
                  textDirection:TextDirection.ltr,
                  style:TextStyle(
                    color:Colors.white,
                    fontSize: 25.0,
                  )
                )
              ),
            )
        )
     ));
}

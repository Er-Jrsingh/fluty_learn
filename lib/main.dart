import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FutureAsync",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FutureAsync")),
      body: Center(
        child: Container(

          child: RaisedButton(
            onPressed: () {fun1();},
            child:Text("Test")
            
          ),
        ),
      ),
    );
  }

  void fun1() {
    print("Hola ! I'm Fun1 ");
    fun2();
  }

  void fun2() {
    Future.delayed(Duration(seconds: 5),(){
    print("Hola! I'm Fun2 ");
    });

    print("Hola! Hola! Hola! I'm Fun2");

  }
}

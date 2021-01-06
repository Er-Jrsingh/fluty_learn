import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Splash Screen",
      home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(  MaterialPageRoute(
          builder: (context) => Home(),)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Text(
          " Hello DoDo !! ",
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              " Hello World  ! ! ! ! ",
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

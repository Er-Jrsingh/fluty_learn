import 'package:flutter/material.dart';

class MyPageDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Details Page",
              style: TextStyle(
                fontSize: 25.0,
              ), 
            ),
            FloatingActionButton(
              onPressed: () { Navigator.pop(context); },
            child: Icon(Icons.arrow_back),)
          ],
        ),
      ),
    );
  }
}

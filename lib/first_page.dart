import 'package:flutter/material.dart';

class MyPageFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page",style: TextStyle(fontFamily:"Cursive"),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.indigoAccent,
              textColor: Colors.white,
              onPressed: () { Navigator.pop(context); },
              child:Text("Go Home",),
            )
          ],
        ),
      ),
    );
  }
}

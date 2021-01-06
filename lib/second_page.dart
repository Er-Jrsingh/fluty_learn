import 'package:flutter/material.dart';

class MyPageSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2nd Page",style: TextStyle(fontFamily:"Cursive"),),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.tealAccent,
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

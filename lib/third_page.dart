import 'package:flutter/material.dart';

class MyPageThird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3rd Page",style: TextStyle(fontFamily:"Cursive"),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "3rd Page",
              style: TextStyle(
                fontSize: 25.0,
              ), 
            ),
            SizedBox(height:50.0),

            RaisedButton(
              color: Colors.greenAccent,
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

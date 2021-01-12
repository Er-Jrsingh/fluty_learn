import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title:"MediaQuery",
    home:MyApp(),),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery"),
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width*0.5,
              height:MediaQuery.of(context).size.height*0.5 ,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.5,
              height:MediaQuery.of(context).size.height*0.5 ,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ),
            ),
          ]),
    );
  }
}

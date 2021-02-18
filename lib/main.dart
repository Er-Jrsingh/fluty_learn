import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homi(),
    ),
  );
}

class Homi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Rich Text"),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "Hola!!",
            children: [
              TextSpan(
                text: "I",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20,color: Colors.lightGreen),
              ),
               TextSpan(
                text: "Am",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10,color: Colors.tealAccent),
              ),
               TextSpan(
                text: "Jitesh",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40,color: Colors.pinkAccent,fontStyle:FontStyle.italic),
              ),
               TextSpan(
                text: "Singh",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20,color: Colors.yellowAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

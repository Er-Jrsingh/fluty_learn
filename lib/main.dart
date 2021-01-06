import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Snack !!!!",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Snacky",
        ),
        backgroundColor: Colors.indigoAccent,
      ),

      /*  Snack Bar Solution 2  - By Builder Method */

      body: Builder(builder: (context) {
        return Center(
          child: FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.indigoAccent,
            onPressed: () {
              final snackbar = SnackBar(
                content: Text("Hii..... Snacky !!!"),
              );
              Scaffold.of(context).showSnackBar(snackbar);
            },
            child: Text(
              "Flat Button",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        );
      }),
    );
  }
}

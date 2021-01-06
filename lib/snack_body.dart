import 'package:flutter/material.dart';

class SnackyB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Container Properties",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Container Properties",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            color: Colors.indigoAccent,
            child: AspectRatio(
              aspectRatio: 1 / 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.pink,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.7,
                      alignment: Alignment.center,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox.fromSize(   
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        width: 150,
                        height: 100,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Buttons",
      color: Colors.indigo,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.limeAccent,
          title: Text(
            "All Buttons",
            style: TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
              fontFamily: "poppins",
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,

          /*  Icon Button   */

          actions: [
            IconButton(
              splashColor: Colors.deepPurple,
              tooltip: "I Am Icon Button",
              icon: Icon(Icons.menu, color: Colors.indigo),
              onPressed: () {
                print("I am Icon Button");
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              /* flat Icon button */

              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.tealAccent,
                onPressed: () {
                  print(
                    "I am flat button",
                  );
                },
                child: Text(
                  "Flat Button",
                ),
              ),
              SizedBox(height: 2),

              /* flat Icon button */

              FlatButton.icon(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.tealAccent,
                onPressed: () {
                  print(
                    "I am flat Icon button",
                  );
                },
                icon: Icon(Icons.settings),
                label: Text(
                  "Flat Icon Button",
                ),
              ),
              SizedBox(height: 2),

              /* RaisedButton*/

              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.tealAccent,
                onPressed: () {
                  print("I am Raised button");
                },
                child: Text("Raised Button"),
              ),
              SizedBox(height: 2),

              /* Raised Icon Button*/

              RaisedButton.icon(
                icon: Icon(Icons.ac_unit, color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
                elevation: 10,
                color: Colors.tealAccent,
                label: Text(
                  "Raised Icon Button",
                ),
                onPressed: () {
                  print(
                    "I am Raised Icon button",
                  );
                },
              ),
              SizedBox(height: 8),

              /* InkWell Button*/

              InkWell(
                onTap: () {
                  print("I am inkwell ");
                },
                child: Container(
                    height: 70,
                    width: 150,
                    color: Colors.tealAccent,
                    child: Center(child: Text("Hello I am Inkwell"))),
              ),
              SizedBox(height: 8),

              /* GestureDetector Button*/

              GestureDetector(
                onTap: () {
                  print("I am Tapped GestureDetector");
                },
                onHorizontalDragEnd: (value) => print(value),
                onVerticalDragDown: (value) => print(value),
                child: Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.tealAccent, shape: BoxShape.circle),
                  child: Center(child: Text("Gestures")),
                ),
              ),
              SizedBox(height: 5),

              /* Material  Button*/

              MaterialButton(onPressed: (){print("I am materialButton",);},
              splashColor: Colors.deepOrange,
              hoverColor: Colors.indigoAccent,
              // highlightColor: Colors.lightGreen,
              elevation: 20,
              height: 40,
              child: Text("Material Button "),
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
                color: Colors.tealAccent,),
              
            ],
          ),
        ),

        /*   FloatingActionButton  */

        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print("I Am Floating Action Button");
          },
          label: Text('floatBtn'),
          icon: Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),

         floatingActionButtonLocation:FloatingActionButtonLocation.startDocked,

         persistentFooterButtons: [
           
          RaisedButton(
            onPressed: () {print("I Am Persistant Footer Button");},
            color: Colors.greenAccent,
            elevation: 10,
            child: Icon(Icons.print, color: Colors.indigoAccent),
          ),
          RaisedButton(
            onPressed: () {print("I Am Persistant Footer Button");},
            color: Colors.greenAccent,
            elevation: 10,
            child: Icon(Icons.privacy_tip, color: Colors.indigoAccent),
          ),
        ],

      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MaterilApp Title",
      theme: ThemeData(primaryColor: Colors.teal[200]),
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: Text(
            "Hello World !!!",
          ),
          centerTitle: true,
        ),
        body: Material(
          color: Colors.tealAccent,
          child: Center(
            child: Text(
              "Welcome To Scaffold Tutorial",
              // textDirection: TextDirection.,
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.home, color: Colors.pinkAccent),
          backgroundColor: Colors.white,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: Drawer(
          elevation: 5,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Jitesh Thakur"),
                accountEmail: Text("Jitust98@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                  child: Text("Jitu"),
                ),
              ),
              ListTile(
                focusColor: Colors.orangeAccent,
                title: Text("Enginner"),
                leading: Icon(Icons.engineering),
                tileColor: Colors.tealAccent[100],
                // trailing: Text("Enginner"),
              ),
              ListTile(
                focusColor: Colors.orangeAccent,
                title: Text("Philanthropist"),
                leading: Icon(Icons.people_alt),
                tileColor: Colors.tealAccent[200],
                // trailing: Text("Enginner"),
              ),
              ListTile(
                focusColor: Colors.orangeAccent,
                title: Text("AI Enthusiast"),
                leading: Icon(Icons.developer_board),
                tileColor: Colors.tealAccent[100],
                // trailing: Text("Enginner"),
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          RaisedButton(
            onPressed: () {},
            color: Colors.greenAccent,
            elevation: 20,
            child: Icon(Icons.print, color: Colors.indigoAccent),
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.greenAccent,
            elevation: 20,
            child: Icon(Icons.privacy_tip, color: Colors.indigoAccent),
          ),
        ],
      ),
    ),
  );
}

import 'package:fluty_learn/pages/home_page.dart';
import 'package:fluty_learn/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login App",
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    ),
  );
}

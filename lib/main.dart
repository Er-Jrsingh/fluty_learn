import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Card App",
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    ),
  );
}

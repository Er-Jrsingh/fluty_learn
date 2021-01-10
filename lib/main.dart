import 'package:flutty_learn/pages/home_page.dart';
import 'package:flutty_learn/pages/login_page.dart';
import 'package:flutty_learn/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Logout Functinality",
      home: Constants.prefs.getBool("loggedIn") == true
          ? HomePage()
          : LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    ),
  );
}

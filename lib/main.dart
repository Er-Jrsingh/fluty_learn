import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WebToApp",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebToApp"),
      ),
      body: WebView(
        initialUrl: "https://www.youtube.com",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

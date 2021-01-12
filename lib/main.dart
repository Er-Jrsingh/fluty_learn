import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Bottom Navigation",
    home: BottomMenu(),
  ));
}

class BottomMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomMenuState();
  }
}

class _BottomMenuState extends State<BottomMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bottom Navigation",
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                height: 40.0,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.search,
                      ),
                      Text("Search"),
                    ],
                    
                  ),
                ),
              ),
            ),

            Expanded(
              child: SizedBox(
                height: 40.0,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.security,
                      ),
                      Text("security"),
                    ],
                    
                  ),
                ),
              ),
            ),

            Expanded(
              child: SizedBox(
                height: 40.0,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.settings,
                      ),
                      Text("setting"),
                    ],
                    
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.limeAccent,
          title:Text("All Buttons"),
       
        ),
        body:Padding(
          padding: const EdgeInsets.only(top:25.0,left: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            FlatButton(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
              color: Colors.tealAccent,
              onPressed: (){
              print("I am flat button");
            }, child: Text("Flat Button")),
            SizedBox(height:10),
            
          ],),
        )
      ),
   );
  }

}
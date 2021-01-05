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
          title:Text("All Buttons" , style: TextStyle(color: Colors.indigoAccent),),
       
        ),
        body:Padding(
          padding: const EdgeInsets.only(top:25.0,left: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              /* flat Icon button */

            FlatButton(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
              color: Colors.tealAccent,
              onPressed: (){
              print("I am flat button");
            }, child: Text("Flat Button")),
            SizedBox(height:10),

              /* flat Icon button */

            FlatButton.icon(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
              color: Colors.tealAccent, 
              onPressed: (){print("I am flat Icon button");},
             icon: Icon(Icons.settings), label: Text("Flat Icon Button")),
             SizedBox(height:10),
            
          ],),
        )
      ),
   );
  }

}
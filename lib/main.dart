import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "Buttons",
     color: Colors.indigo,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.limeAccent,
          title:Text("All Buttons" , style: TextStyle(color: Colors.indigoAccent),),

           /*  Icon Button   */

          actions:[
            IconButton(icon: Icon(Icons.menu,color:Colors.tealAccent),onPressed: (){print("I am Icon Button");},),
          ]
       
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

             /* RaisedButton*/

             RaisedButton(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
              color: Colors.tealAccent,
              onPressed: (){
              print("I am Raised button");
            }, child: Text("Raised Button")),
            SizedBox(height:10),

              /* Raised Icon Button*/

              RaisedButton.icon(
               icon: Icon(Icons.ac_unit,color:Colors.white),
               shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(80)),
               elevation: 20,
               color: Colors.tealAccent,
               label:Text("Raised Icon Button"),
               onPressed: (){
                 print("I am Raised Icon button");
               }),
                SizedBox(height:10),

               /* InkWell Button*/

                     InkWell(
                 onTap: (){print("I am inkwell ");},
                                child: Container(
                   height:70,width:150,
                   color:Colors.tealAccent,
                   child:Center(child: Text("Hello I am Inkwell"))
                 ),
               ),
               SizedBox(height:10),

               
               /* GestureDetector Button*/

               GestureDetector(
            onTap: (){print("I am Tapped GestureDetector");},
            onHorizontalDragEnd:(value)=>print(value) ,
            onVerticalDragDown: (value)=>print(value),
             child:Container(
               height: 70,width: 80,
               decoration: BoxDecoration(
                 color:Colors.tealAccent,
                 shape:BoxShape.circle
               ),
               child: Center(child:Text("Gestures")),)
           )
            
          ],),
        )
      ),
   );
  }

}
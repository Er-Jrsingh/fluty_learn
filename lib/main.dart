import 'package:flutter/material.dart';
import 'package:fluty_learn/table_screen/table_body.dart';


void main() =>runApp( MyTable ());

/*
void main(){
    runApp( new MyTable ());
    runApp( MyTable ());
  }
  */
class MyTable extends  StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner:false,
        title:"MaterilApp Title",
        
             home: Scaffold(
                    appBar: AppBar(title:Text("Table Tutorial")),
                    body:  MyTabBody()
      )
    );
  }
}

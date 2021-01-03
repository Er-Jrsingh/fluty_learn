import 'package:flutter/material.dart';

class MyTabBody extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

     return 
              Container(
                margin:EdgeInsets.all(10.0),
                child:Table(
                  border: TableBorder.all(),
                  
                  children:[
                    TableRow(
                    children: [
                      Text("First Name",style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),),
                      Text("Last Name" , style:TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,),)
                    ]
                  ),
                    TableRow(
                    children: [
                      Text("Jitesh",style: TextStyle(fontSize: 15.0,),),
                      Text("Thakur",style: TextStyle(fontSize: 15.0,))
                    ]
                    ),
                     TableRow(
                    children: [
                      Text("Utkarsh",style: TextStyle(fontSize: 15.0,),),
                      Text("Tiwari",style: TextStyle(fontSize: 15.0,))
                    ]
                    ),
                     TableRow(
                    children: [
                      Text("Shudhanshu",style: TextStyle(fontSize: 15.0,),),
                      Text("Singh",style: TextStyle(fontSize: 15.0,))
                    ]
                    )]
                )
                );
  }
}
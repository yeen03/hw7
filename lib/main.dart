import 'dart:io';
import 'dart:js';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
 void main() {
   runApp(MyApp());
 }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override

  Widget myButton(String buttonLabel){
    return Expanded(
      child: OutlinedButton(
      //Padding : EdgeInsets.all(24),
      onPressed: () { },
         child: Text(
         buttonLabel,
       style: TextStyle(
         fontSize: 20,
         ),   ),
      ),
    );
  }

  Widget build(BuildContext context) {
      return MaterialApp(
    debugShowCheckedModeBanner : false,
  
    home: Scaffold(
      appBar: AppBar(
        title: Text(" Calculator yeen "),
      ),
      body: Column(
        children: [

          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            alignment: Alignment.centerRight,
            child: Text(
              "Result",
              style: TextStyle(
                fontSize: 48,
                fontWeight:FontWeight.bold
              ),
            ),
          ),
          Expanded(
            child: Divider(),
          ),


           Column(
            children: [
              Row(

              children: [
                myButton("7"),
                myButton("8"),
                myButton("9"),
                myButton("/"),

            ],
           ),
            Row(

              children: [
                myButton("4"),
                myButton("5"),
                myButton("6"),
                myButton("x"),

            ],
           ),
                Row(

              children: [
                myButton("1"),
                myButton("2"),
                myButton("3"),
                myButton("-"),

            ],
           ),
                Row(

              children: [ 
                myButton("."),
                myButton("0"),
                myButton("00"),
                myButton("+"),

            ],
           ),
                Row(

              children: [
                myButton("CLEAR"),
                myButton("="),
               
            ],
           ),
            ],
           )
           
        ],
      ),
    ),
    );
    
  }
}
  
  

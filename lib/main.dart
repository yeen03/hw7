import 'dart:io';
import 'dart:js';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
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
  String Result = "0";
  String expression = "";
  buttonPressed(String value){
  

setState(() {
  if ( value == "CLEAR" ) {
    Result= "0";
    } else {
if ( Result == "0" ) {
  Result = value;

   }else if ( value == " . ") {
    
    if (Result.contains(".")){
      return;
      } else {
        Result = Result + value;
      }  
      }else if (value == "="){

        
       expression = Result.replaceAll("x", "*");

       Parser p = Parser();
      Expression exp = p.parse(expression);

      ContextModel cm = ContextModel();
     dynamic calculate = exp.evaluate(EvaluationType.REAL, cm);

     Result = "$calculate";
      


    }else{
    Result = Result + value;
    }
     

   }  

});
    
  }

  Widget myButton(String buttonLabel){
    return Expanded(
      child: OutlinedButton(
      //Padding : EdgeInsets.all(24),
      onPressed: () => buttonPressed(buttonLabel),
     
  
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
      body: SafeArea(
        child: Column(
          children: [
      
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 24),
              alignment: Alignment.centerRight,
              child: Text(
                " Result",
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
    ),
    theme: ThemeData(primarySwatch: Colors.blue),
    );
    
  }
}
  
  

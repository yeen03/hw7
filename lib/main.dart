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

  Widget myButton(){
    return Expanded(
      child: OutlinedButton(
                    onPressed: (() {
                      
                    }),
                    child: Text("yyy"),
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

           Row(

              children: [
                
                myButton(),
                myButton(),
                myButton(),
                myButton(),

            ],
           ),
        ],
      ),
    ),
    );
    
  }
}
  
  

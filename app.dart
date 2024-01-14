import 'dart:math';

import 'package:flutter/material.dart';
var random=Random();

class _DiceApp extends StatefulWidget{
  @override
AppState createState() {
    return AppState();
  }
}

class AppState extends State<_DiceApp>{
 List<String> imageAssetpath=
   ['assets/images/dice-1.png',
    'assets/images/dice-2.png',
    'assets/images/dice-3.png',
    'assets/images/dice-4.png',
    'assets/images/dice-5.png',
    'assets/images/dice-6.png'
  ];
  int index=0;
  @override
   Widget build(BuildContext context){
      return  MaterialApp( 
 home: Scaffold(
  body: Container(
   color: const Color.fromRGBO(2, 39, 63, 1),
  child: Center(child: Column(mainAxisSize: MainAxisSize.min,
    children: [Image.asset(imageAssetpath[index], width: 200), 
    const SizedBox(height: 20),
    ElevatedButton(onPressed: onpress,style:TextButton.styleFrom( //padding: const EdgeInsets.only(top: 20) ,
       foregroundColor: const Color.fromARGB(255, 235, 37, 37),textStyle: const TextStyle(fontSize: 25)) , child: const Text("Roll"),)]) ) ),
 ),
  );
   }
   void onpress(){
     setState(() {
       index= random.nextInt(6);
       
     });
   }
}
void main() {
  runApp(_DiceApp());
}

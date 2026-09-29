// 5. ElevatedButton displays a message using SnackBar.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});
 Widget build(x)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.indigo),
  home:Scaffold(appBar:AppBar(title:const Text('SnackBar Message'),centerTitle:true),
  body:Builder(builder:(c)=>Align(alignment:Alignment.topCenter,child:Padding(padding:const EdgeInsets.only(top:18),child:Card(elevation:3,child:Padding(padding:const EdgeInsets.all(28),
   child:ElevatedButton.icon(onPressed:()=>ScaffoldMessenger.of(c).showSnackBar(const SnackBar(content:Text('Hello! Button pressed successfully.'))),
   icon:const Icon(Icons.notifications),label:const Text('Show Message')))))))));
}
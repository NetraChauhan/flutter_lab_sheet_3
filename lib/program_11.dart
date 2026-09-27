// 11. Convert Celsius temperature into Fahrenheit using user input.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final c=TextEditingController();double f=0;
Widget build(x)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.indigo),home:Scaffold(body:Padding(padding:const EdgeInsets.all(24),child:Column(children:[
TextField(controller:c,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'Celsius')),
ElevatedButton(onPressed:()=>setState(()=>f=(double.tryParse(c.text)??0)*9/5+32),child:const Text('Convert')),
Text('Fahrenheit = ${f.toStringAsFixed(2)}°F')]))));}
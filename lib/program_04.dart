// 4. Button changes the displayed text when pressed.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{String text='Original Text';
Widget build(c)=>MaterialApp(home:Scaffold(body:Center(child:Column(mainAxisSize:MainAxisSize.min,children:[
Text(text,style:const TextStyle(fontSize:24)),
ElevatedButton(onPressed:()=>setState(()=>text='Text Changed!'),child:const Text('Change Text'))]))));}
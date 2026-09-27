// 16. Radio buttons to select a course from three options.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{String course='BCA';
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.indigo),home:Scaffold(body:Padding(padding:const EdgeInsets.all(24),child:Column(children:[
const Text('Select Course',style:TextStyle(fontSize:22)),
...['BCA','BBA','B.Tech'].map((x)=>RadioListTile(value:x,groupValue:course,title:Text(x),onChanged:(v)=>setState(()=>course=v!))),
Text('Selected: $course')]))));}
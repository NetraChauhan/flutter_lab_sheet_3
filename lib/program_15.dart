// 15. Radio buttons to select the student's gender.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{String gender='Male';
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.indigo),home:Scaffold(body:Padding(padding:const EdgeInsets.all(24),child:Column(children:[
const Text('Select Gender',style:TextStyle(fontSize:22)),
...['Male','Female','Other'].map((g)=>RadioListTile(value:g,groupValue:gender,title:Text(g),onChanged:(v)=>setState(()=>gender=v!))),
Text('Selected: $gender')]))));}
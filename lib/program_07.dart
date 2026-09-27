// 7. Accept student name and marks in three subjects and display total marks.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final n=TextEditingController(),a=TextEditingController(),b=TextEditingController(),d=TextEditingController();String out='';
int v(TextEditingController x)=>int.tryParse(x.text)??0;
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.indigo),home:Scaffold(appBar:AppBar(title:const Text('Total Marks')),body:Padding(padding:const EdgeInsets.all(24),child:Column(children:[
TextField(controller:n,decoration:const InputDecoration(labelText:'Student Name')),
...[a,b,d].asMap().entries.map((e)=>TextField(controller:e.value,keyboardType:TextInputType.number,decoration:InputDecoration(labelText:'Subject ${e.key+1} Marks'))),
ElevatedButton(onPressed:()=>setState(()=>out='${n.text}: Total = ${v(a)+v(b)+v(d)}'),child:const Text('Calculate')),Text(out)]))));}
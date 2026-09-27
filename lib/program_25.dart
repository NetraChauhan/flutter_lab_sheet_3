// 25. Student Result Application: name, 3 marks, total, percentage, and Pass/Fail.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final n=TextEditingController(),a=TextEditingController(),b=TextEditingController(),d=TextEditingController();String out='';
double v(TextEditingController x)=>double.tryParse(x.text)??0;
Widget build(c)=>MaterialApp(home:Scaffold(appBar:AppBar(title:const Text('Student Result')),body:Padding(
padding:const EdgeInsets.all(20),child:Column(children:[
TextField(controller:n,decoration:const InputDecoration(labelText:'Student Name')),
...[a,b,d].asMap().entries.map((e)=>TextField(controller:e.value,keyboardType:TextInputType.number,decoration:InputDecoration(labelText:'Subject ${e.key+1} Marks'))),
ElevatedButton(onPressed:(){double total=v(a)+v(b)+v(d),p=total/3;setState(()=>out='${n.text}\nTotal: $total\nPercentage: ${p.toStringAsFixed(2)}%\nResult: ${p>=40?'Pass':'Fail'}');},child:const Text('Show Result')),
Text(out,textAlign:TextAlign.center)]))));}
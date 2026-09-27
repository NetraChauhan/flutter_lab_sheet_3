// 8. Calculate percentage from three subject marks entered by the user.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final a=TextEditingController(),b=TextEditingController(),d=TextEditingController();double p=0;
double v(TextEditingController x)=>double.tryParse(x.text)??0;
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,home:Scaffold(appBar:AppBar(title:const Text('Percentage')),body:Padding(padding:const EdgeInsets.all(24),child:Column(children:[
...[a,b,d].asMap().entries.map((e)=>TextField(controller:e.value,keyboardType:TextInputType.number,decoration:InputDecoration(labelText:'Subject ${e.key+1} Marks'))),
ElevatedButton(onPressed:()=>setState(()=>p=(v(a)+v(b)+v(d))/3),child:const Text('Calculate')),
Text('Percentage = ${p.toStringAsFixed(2)}%')]))));}
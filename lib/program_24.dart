// 24. Simple Calculator accepts two numbers and performs operations using buttons.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final a=TextEditingController(),b=TextEditingController();String out='';
void calc(String op){double x=double.tryParse(a.text)??0,y=double.tryParse(b.text)??0;setState(()=>out=op=='+'?'${x+y}':op=='-'?'${x-y}':op=='×'?'${x*y}':y==0?'Error':'${x/y}');}
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,home:Scaffold(appBar:AppBar(title:const Text('Simple Calculator')),body:Padding(
padding:const EdgeInsets.all(24),child:Column(children:[
TextField(controller:a,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'Number 1')),
TextField(controller:b,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'Number 2')),
Wrap(spacing:8,children:['+','-','×','÷'].map((x)=>ElevatedButton(onPressed:()=>calc(x),child:Text(x))).toList()),
Text('Result: $out')]))));}
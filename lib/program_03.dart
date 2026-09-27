// 3. Accept two numbers and perform addition, subtraction, multiplication and division using buttons.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final a=TextEditingController(),b=TextEditingController();String ans='';
void calc(String op){double x=double.tryParse(a.text)??0,y=double.tryParse(b.text)??0;setState(()=>ans=op=='+'?'${x+y}':op=='-'?'${x-y}':op=='×'?'${x*y}':y==0?'Cannot divide by zero':'${x/y}');}
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,home:Scaffold(appBar:AppBar(title:const Text('Operations')),body:Padding(padding:const EdgeInsets.all(24),child:Column(children:[
TextField(controller:a,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'Number 1')),
TextField(controller:b,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'Number 2')),
Wrap(spacing:8,children:['+','-','×','÷'].map((e)=>ElevatedButton(onPressed:()=>calc(e),child:Text(e))).toList()),
Text('Result: $ans')]))));}
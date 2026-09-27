// 2. Accept two numbers using TextField and display their sum.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final a=TextEditingController(),b=TextEditingController();double sum=0;
Widget build(c)=>MaterialApp(home:Scaffold(appBar:AppBar(title:const Text('Sum')),body:Padding(padding:const EdgeInsets.all(24),child:Column(children:[
TextField(controller:a,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'Number 1')),
TextField(controller:b,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'Number 2')),
ElevatedButton(onPressed:()=>setState(()=>sum=(double.tryParse(a.text)??0)+(double.tryParse(b.text)??0)),child:const Text('Add')),
Text('Sum = $sum')]))));}
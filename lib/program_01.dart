// 1. Accept a student's name using a TextField and display it.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final name=TextEditingController();String result='';
Widget build(c)=>MaterialApp(home:Scaffold(appBar:AppBar(title:const Text('Student Name')),body:Padding(padding:const EdgeInsets.all(24),child:Column(children:[
TextField(controller:name,decoration:const InputDecoration(labelText:'Enter name')),
ElevatedButton(onPressed:()=>setState(()=>result=name.text),child:const Text('Display')),
Text(result,style:const TextStyle(fontSize:22))]))));}
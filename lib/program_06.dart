// 6. Simple form with Submit and Reset buttons.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final name=TextEditingController(),email=TextEditingController();String msg='';
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,home:Scaffold(appBar:AppBar(title:const Text('Simple Form')),body:Padding(padding:const EdgeInsets.all(24),child:Column(children:[
TextField(controller:name,decoration:const InputDecoration(labelText:'Name')),
TextField(controller:email,decoration:const InputDecoration(labelText:'Email')),
Row(children:[ElevatedButton(onPressed:()=>setState(()=>msg='Submitted: ${name.text}'),child:const Text('Submit')),const SizedBox(width:10),
ElevatedButton(onPressed:(){name.clear();email.clear();setState(()=>msg='');},child:const Text('Reset'))]),Text(msg)]))));}
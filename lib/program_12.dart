// 12. Calculate the area of a rectangle using length and width entered by the user.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final l=TextEditingController(),w=TextEditingController();double area=0;
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,home:Scaffold(body:Padding(padding:const EdgeInsets.all(24),child:Column(children:[
TextField(controller:l,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'Length')),
TextField(controller:w,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'Width')),
ElevatedButton(onPressed:()=>setState(()=>area=(double.tryParse(l.text)??0)*(double.tryParse(w.text)??0)),child:const Text('Calculate Area')),
Text('Area = $area')]))));}
// 10. Check whether a number entered by the user is positive, negative, or zero.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final n=TextEditingController();String out='';
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,home:Scaffold(body:Padding(padding:const EdgeInsets.all(24),child:Column(children:[
TextField(controller:n,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'Enter number')),
ElevatedButton(onPressed:(){double x=double.tryParse(n.text)??0;setState(()=>out=x>0?'Positive':x<0?'Negative':'Zero');},child:const Text('Check')),
Text(out,style:const TextStyle(fontSize:22))]))));}
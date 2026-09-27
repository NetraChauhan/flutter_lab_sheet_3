// 9. Check whether a number entered by the user is even or odd.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final n=TextEditingController();String out='';
Widget build(c)=>MaterialApp(home:Scaffold(body:Padding(padding:const EdgeInsets.all(24),child:Column(children:[
TextField(controller:n,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'Enter number')),
ElevatedButton(onPressed:(){int x=int.tryParse(n.text)??0;setState(()=>out=x%2==0?'Even':'Odd');},child:const Text('Check')),
Text(out,style:const TextStyle(fontSize:22))]))));}
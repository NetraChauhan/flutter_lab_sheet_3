// 1. Accept a student's name using a TextField and display it.
import 'package:flutter/material.dart';
Widget page(String title,List<Widget> x)=>MaterialApp(
 debugShowCheckedModeBanner:false,
 theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.indigo),
 home:Scaffold(appBar:AppBar(title:Text(title),centerTitle:true),
 body:Align(alignment:Alignment.topCenter,child:SingleChildScrollView(padding:const EdgeInsets.fromLTRB(24,18,24,24),
 child:ConstrainedBox(constraints:const BoxConstraints(maxWidth:420),
 child:Card(elevation:3,child:Padding(padding:const EdgeInsets.all(24),
 child:Column(mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.stretch,children:x))))))));
InputDecoration d(String s)=>InputDecoration(labelText:s,border:const OutlineInputBorder());
Widget gap()=>const SizedBox(height:14);

void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{
 final c=TextEditingController();String name='';
 Widget build(x)=>page('Student Name',[
  TextField(controller:c,decoration:d('Enter student name')),gap(),
  FilledButton.icon(onPressed:()=>setState(()=>name=c.text.trim()),icon:const Icon(Icons.person),label:const Text('Display Name')),gap(),
  if(name.isNotEmpty)Container(padding:const EdgeInsets.all(16),decoration:BoxDecoration(color:Colors.indigo.shade50,borderRadius:BorderRadius.circular(12)),
   child:Text(name,textAlign:TextAlign.center,style:const TextStyle(fontSize:24,fontWeight:FontWeight.bold)))
 ]);
}
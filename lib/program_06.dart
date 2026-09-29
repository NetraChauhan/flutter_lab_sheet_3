// 6. Simple form with Submit and Reset buttons.
import 'package:flutter/material.dart';
Widget page(String title,List<Widget> x)=>MaterialApp(
 debugShowCheckedModeBanner:false,
 theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.brown),
 home:Scaffold(appBar:AppBar(title:Text(title),centerTitle:true),
 body:Align(alignment:Alignment.topCenter,child:SingleChildScrollView(padding:const EdgeInsets.fromLTRB(24,18,24,24),
 child:ConstrainedBox(constraints:const BoxConstraints(maxWidth:420),child:Container(padding:const EdgeInsets.all(22),decoration:BoxDecoration(color:Colors.brown.shade50,borderRadius:BorderRadius.circular(18)),child:Column(mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.stretch,children:x)))))));
InputDecoration d(String s)=>InputDecoration(labelText:s,border:const OutlineInputBorder());
Widget gap()=>const SizedBox(height:14);

void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{
 final n=TextEditingController(),e=TextEditingController();String msg='';
 Widget build(x)=>page('Simple Form',[
  TextField(controller:n,decoration:d('Name')),gap(),
  TextField(controller:e,decoration:d('Email')),gap(),
  Row(children:[
   Expanded(child:FilledButton(onPressed:()=>setState(()=>msg='Form submitted for ${n.text}'),child:const Text('Submit'))),
   const SizedBox(width:12),
   Expanded(child:OutlinedButton(onPressed:(){n.clear();e.clear();setState(()=>msg='');},child:const Text('Reset')))
  ]),gap(),
  if(msg.isNotEmpty)Text(msg,textAlign:TextAlign.center,style:const TextStyle(fontWeight:FontWeight.bold))
 ]);
}
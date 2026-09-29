// 18. DropdownButton to select a department.
import 'package:flutter/material.dart';
Widget page(String title,List<Widget> x)=>MaterialApp(
 debugShowCheckedModeBanner:false,
 theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.teal),
 home:Scaffold(appBar:AppBar(title:Text(title),centerTitle:true),
 body:Align(alignment:Alignment.topCenter,child:SingleChildScrollView(padding:const EdgeInsets.fromLTRB(24,18,24,24),
 child:ConstrainedBox(constraints:const BoxConstraints(maxWidth:420),child:Container(padding:const EdgeInsets.all(22),decoration:BoxDecoration(color:Colors.teal.shade50,borderRadius:BorderRadius.circular(18)),child:Column(mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.stretch,children:x)))))));
InputDecoration d(String s)=>InputDecoration(labelText:s,border:const OutlineInputBorder());
Widget gap()=>const SizedBox(height:14);

void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{
 String dept='Computer Applications';
 Widget build(x)=>page('Select Department',[
  DropdownButtonFormField<String>(value:dept,decoration:d('Department'),
   items:['Computer Applications','Management','Engineering'].map((s)=>DropdownMenuItem(value:s,child:Text(s))).toList(),
   onChanged:(v)=>setState(()=>dept=v!)),gap(),
  Text('Selected: $dept',textAlign:TextAlign.center,style:const TextStyle(fontSize:20,fontWeight:FontWeight.bold))
 ]);
}
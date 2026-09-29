// 17. DropdownButton to select a semester.
import 'package:flutter/material.dart';
Widget page(String title,List<Widget> x)=>MaterialApp(
 debugShowCheckedModeBanner:false,
 theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.cyan),
 home:Scaffold(appBar:AppBar(title:Text(title),centerTitle:true),
 body:Align(alignment:Alignment.topCenter,child:SingleChildScrollView(padding:const EdgeInsets.fromLTRB(24,18,24,24),
 child:ConstrainedBox(constraints:const BoxConstraints(maxWidth:420),child:Column(mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.stretch,children:x))))));
InputDecoration d(String s)=>InputDecoration(labelText:s,border:const OutlineInputBorder());
Widget gap()=>const SizedBox(height:14);

void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{
 String sem='1st';
 Widget build(x)=>page('Select Semester',[
  DropdownButtonFormField<String>(value:sem,decoration:d('Semester'),
   items:['1st','2nd','3rd','4th','5th','6th'].map((s)=>DropdownMenuItem(value:s,child:Text(s))).toList(),
   onChanged:(v)=>setState(()=>sem=v!)),gap(),
  Text('Selected: $sem Semester',textAlign:TextAlign.center,style:const TextStyle(fontSize:20,fontWeight:FontWeight.bold))
 ]);
}
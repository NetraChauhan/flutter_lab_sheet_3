// 15. Radio buttons to select the student's gender.
import 'package:flutter/material.dart';
Widget page(String title,List<Widget> x)=>MaterialApp(
 debugShowCheckedModeBanner:false,
 theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.deepPurple),
 home:Scaffold(appBar:AppBar(title:Text(title),centerTitle:true),
 body:Align(alignment:Alignment.topCenter,child:SingleChildScrollView(padding:const EdgeInsets.fromLTRB(24,18,24,24),
 child:ConstrainedBox(constraints:const BoxConstraints(maxWidth:420),child:Card(elevation:2,surfaceTintColor:Colors.deepPurple.shade100,child:Padding(padding:const EdgeInsets.all(22),child:Column(mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.stretch,children:x))))))));
InputDecoration d(String s)=>InputDecoration(labelText:s,border:const OutlineInputBorder());
Widget gap()=>const SizedBox(height:14);

void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{
 String gender='Male';
 Widget build(x)=>page('Select Gender',[
  ...['Male','Female','Other'].map((g)=>RadioListTile(contentPadding:EdgeInsets.zero,value:g,groupValue:gender,title:Text(g),onChanged:(v)=>setState(()=>gender=v!))),
  gap(),Text('Selected: $gender',textAlign:TextAlign.center,style:const TextStyle(fontSize:20,fontWeight:FontWeight.bold))
 ]);
}
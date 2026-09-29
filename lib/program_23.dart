// 23. Student Feedback Form with name, rating options, feedback field, and Submit button.
import 'package:flutter/material.dart';
Widget page(String title,List<Widget> x)=>MaterialApp(
 debugShowCheckedModeBanner:false,
 theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.indigo),
 home:Scaffold(appBar:AppBar(title:Text(title),centerTitle:true),
 body:Center(child:SingleChildScrollView(padding:const EdgeInsets.all(24),
 child:ConstrainedBox(constraints:const BoxConstraints(maxWidth:420),
 child:Card(elevation:3,child:Padding(padding:const EdgeInsets.all(24),
 child:Column(mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.stretch,children:x))))))));
InputDecoration d(String s)=>InputDecoration(labelText:s,border:const OutlineInputBorder());
Widget gap()=>const SizedBox(height:14);

void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{
 final n=TextEditingController(),f=TextEditingController();int rating=3;String msg='';
 Widget build(x)=>page('Student Feedback',[
  TextField(controller:n,decoration:d('Student name')),gap(),
  const Text('Rating',style:TextStyle(fontWeight:FontWeight.bold)),
  Wrap(spacing:8,alignment:WrapAlignment.center,
   children:[1,2,3,4,5].map((r)=>ChoiceChip(label:Text('$r ★'),selected:rating==r,onSelected:(_)=>setState(()=>rating=r))).toList()),gap(),
  TextField(controller:f,maxLines:3,decoration:d('Write feedback')),gap(),
  FilledButton.icon(onPressed:()=>setState(()=>msg='Thank you, ${n.text}! Rating: $rating/5'),icon:const Icon(Icons.send),label:const Text('Submit Feedback')),gap(),
  if(msg.isNotEmpty)Text(msg,textAlign:TextAlign.center,style:const TextStyle(fontWeight:FontWeight.bold))
 ]);
}
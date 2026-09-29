// 7. Accept student's name and marks in three subjects and display total marks.
import 'package:flutter/material.dart';
Widget page(String title,List<Widget> x)=>MaterialApp(
 debugShowCheckedModeBanner:false,
 theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.blueGrey),
 home:Scaffold(appBar:AppBar(title:Text(title),centerTitle:true),
 body:Align(alignment:Alignment.topCenter,child:SingleChildScrollView(padding:const EdgeInsets.fromLTRB(24,18,24,24),
 child:ConstrainedBox(constraints:const BoxConstraints(maxWidth:420),child:Card(elevation:2,surfaceTintColor:Colors.blueGrey.shade100,child:Padding(padding:const EdgeInsets.all(22),child:Column(mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.stretch,children:x))))))));
InputDecoration d(String s)=>InputDecoration(labelText:s,border:const OutlineInputBorder());
Widget gap()=>const SizedBox(height:14);

void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{
 final n=TextEditingController(),a=TextEditingController(),b=TextEditingController(),c=TextEditingController();String out='';
 double v(TextEditingController x)=>double.tryParse(x.text)??0;
 Widget build(x)=>page('Total Marks',[
  TextField(controller:n,decoration:d('Student name')),gap(),
  ...[a,b,c].asMap().entries.expand((e)=>[TextField(controller:e.value,keyboardType:TextInputType.number,decoration:d('Subject ${e.key+1} marks')),gap()]),
  FilledButton(onPressed:()=>setState(()=>out='${n.text} — Total: ${v(a)+v(b)+v(c)} / 300'),child:const Text('Calculate Total')),gap(),
  if(out.isNotEmpty)Text(out,textAlign:TextAlign.center,style:const TextStyle(fontSize:20,fontWeight:FontWeight.bold))
 ]);
}
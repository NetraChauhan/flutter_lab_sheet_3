// 4. Button changes the displayed text when pressed.
import 'package:flutter/material.dart';
Widget page(String title,List<Widget> x)=>MaterialApp(
 debugShowCheckedModeBanner:false,
 theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.purple),
 home:Scaffold(appBar:AppBar(title:Text(title),centerTitle:true),
 body:Align(alignment:Alignment.topCenter,child:SingleChildScrollView(padding:const EdgeInsets.fromLTRB(24,18,24,24),
 child:ConstrainedBox(constraints:const BoxConstraints(maxWidth:420),child:Container(padding:const EdgeInsets.all(22),decoration:BoxDecoration(border:Border.all(color:Colors.purple,width:1.5),borderRadius:BorderRadius.circular(16)),child:Column(mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.stretch,children:x)))))));
InputDecoration d(String s)=>InputDecoration(labelText:s,border:const OutlineInputBorder());
Widget gap()=>const SizedBox(height:14);

void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{
 String text='Press the button to change this text';
 Widget build(x)=>page('Change Text',[
  Container(padding:const EdgeInsets.all(18),decoration:BoxDecoration(color:Colors.indigo.shade50,borderRadius:BorderRadius.circular(12)),
   child:Text(text,textAlign:TextAlign.center,style:const TextStyle(fontSize:20))),gap(),
  FilledButton.icon(onPressed:()=>setState(()=>text='The text has changed!'),icon:const Icon(Icons.refresh),label:const Text('Change Text'))
 ]);
}
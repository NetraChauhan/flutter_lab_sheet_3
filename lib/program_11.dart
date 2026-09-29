// 11. Convert Celsius temperature into Fahrenheit using user input.
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
 final c=TextEditingController();double? f;
 Widget build(x)=>page('Celsius to Fahrenheit',[
  TextField(controller:c,keyboardType:TextInputType.number,decoration:d('Temperature in °C')),gap(),
  FilledButton(onPressed:()=>setState(()=>f=(double.tryParse(c.text)??0)*9/5+32),child:const Text('Convert')),gap(),
  if(f!=null)Text('${f!.toStringAsFixed(2)} °F',textAlign:TextAlign.center,style:const TextStyle(fontSize:28,fontWeight:FontWeight.bold))
 ]);
}
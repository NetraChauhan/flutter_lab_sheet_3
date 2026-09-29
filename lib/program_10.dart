// 10. Check whether a number entered by the user is positive, negative, or zero.
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
 final n=TextEditingController();String out='';
 Widget build(x)=>page('Number Check',[
  TextField(controller:n,keyboardType:TextInputType.number,decoration:d('Enter a number')),gap(),
  FilledButton(onPressed:(){double v=double.tryParse(n.text)??0;setState(()=>out=v>0?'Positive':v<0?'Negative':'Zero');},child:const Text('Check Number')),gap(),
  if(out.isNotEmpty)Text(out,textAlign:TextAlign.center,style:const TextStyle(fontSize:26,fontWeight:FontWeight.bold))
 ]);
}
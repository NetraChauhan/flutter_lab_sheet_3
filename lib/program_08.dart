// 8. Calculate percentage from three subject marks entered by the user.
import 'package:flutter/material.dart';
Widget page(String title,List<Widget> x)=>MaterialApp(
 debugShowCheckedModeBanner:false,
 theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.pink),
 home:Scaffold(appBar:AppBar(title:Text(title),centerTitle:true),
 body:Align(alignment:Alignment.topCenter,child:SingleChildScrollView(padding:const EdgeInsets.fromLTRB(24,18,24,24),
 child:ConstrainedBox(constraints:const BoxConstraints(maxWidth:420),child:Container(padding:const EdgeInsets.all(22),decoration:BoxDecoration(border:Border.all(color:Colors.pink,width:1.5),borderRadius:BorderRadius.circular(16)),child:Column(mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.stretch,children:x)))))));
InputDecoration d(String s)=>InputDecoration(labelText:s,border:const OutlineInputBorder());
Widget gap()=>const SizedBox(height:14);

void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{
 final a=TextEditingController(),b=TextEditingController(),c=TextEditingController();double? p;
 double v(TextEditingController x)=>double.tryParse(x.text)??0;
 Widget build(x)=>page('Percentage Calculator',[
  ...[a,b,c].asMap().entries.expand((e)=>[TextField(controller:e.value,keyboardType:TextInputType.number,decoration:d('Subject ${e.key+1} marks')),gap()]),
  FilledButton(onPressed:()=>setState(()=>p=(v(a)+v(b)+v(c))/3),child:const Text('Calculate Percentage')),gap(),
  if(p!=null)Text('${p!.toStringAsFixed(2)}%',textAlign:TextAlign.center,style:const TextStyle(fontSize:28,fontWeight:FontWeight.bold))
 ]);
}
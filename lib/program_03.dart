// 3. Accept two numbers and perform addition, subtraction, multiplication and division using buttons.
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
 final a=TextEditingController(),b=TextEditingController();String ans='';
 void calc(String op){double x=double.tryParse(a.text)??0,y=double.tryParse(b.text)??0;
  setState(()=>ans=op=='+'?'${x+y}':op=='-'?'${x-y}':op=='×'?'${x*y}':y==0?'Cannot divide by zero':'${x/y}');}
 Widget build(x)=>page('Arithmetic Operations',[
  TextField(controller:a,keyboardType:TextInputType.number,decoration:d('First number')),gap(),
  TextField(controller:b,keyboardType:TextInputType.number,decoration:d('Second number')),gap(),
  Wrap(spacing:10,runSpacing:10,alignment:WrapAlignment.center,
   children:['+','-','×','÷'].map((e)=>FilledButton(onPressed:()=>calc(e),child:Text(e,style:const TextStyle(fontSize:20)))).toList()),gap(),
  if(ans.isNotEmpty)Text('Result: $ans',textAlign:TextAlign.center,style:const TextStyle(fontSize:22,fontWeight:FontWeight.bold))
 ]);
}
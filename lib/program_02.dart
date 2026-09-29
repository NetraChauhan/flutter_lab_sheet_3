// 2. Accept two numbers using TextField and display their sum.
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
 final a=TextEditingController(),b=TextEditingController();double? sum;
 Widget build(x)=>page('Addition',[
  TextField(controller:a,keyboardType:TextInputType.number,decoration:d('First number')),gap(),
  TextField(controller:b,keyboardType:TextInputType.number,decoration:d('Second number')),gap(),
  FilledButton(onPressed:()=>setState(()=>sum=(double.tryParse(a.text)??0)+(double.tryParse(b.text)??0)),child:const Text('Calculate Sum')),gap(),
  if(sum!=null)Text('Sum = $sum',textAlign:TextAlign.center,style:const TextStyle(fontSize:22,fontWeight:FontWeight.bold))
 ]);
}
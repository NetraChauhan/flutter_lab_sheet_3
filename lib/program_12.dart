// 12. Calculate the area of a rectangle using length and width entered by the user.
import 'package:flutter/material.dart';
Widget page(String title,List<Widget> x)=>MaterialApp(
 debugShowCheckedModeBanner:false,
 theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.lime),
 home:Scaffold(appBar:AppBar(title:Text(title),centerTitle:true),
 body:Align(alignment:Alignment.topCenter,child:SingleChildScrollView(padding:const EdgeInsets.fromLTRB(24,18,24,24),
 child:ConstrainedBox(constraints:const BoxConstraints(maxWidth:420),child:Container(padding:const EdgeInsets.all(22),decoration:BoxDecoration(border:Border.all(color:Colors.lime,width:1.5),borderRadius:BorderRadius.circular(16)),child:Column(mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.stretch,children:x)))))));
InputDecoration d(String s)=>InputDecoration(labelText:s,border:const OutlineInputBorder());
Widget gap()=>const SizedBox(height:14);

void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{
 final l=TextEditingController(),w=TextEditingController();double? area;
 Widget build(x)=>page('Rectangle Area',[
  TextField(controller:l,keyboardType:TextInputType.number,decoration:d('Length')),gap(),
  TextField(controller:w,keyboardType:TextInputType.number,decoration:d('Width')),gap(),
  FilledButton(onPressed:()=>setState(()=>area=(double.tryParse(l.text)??0)*(double.tryParse(w.text)??0)),child:const Text('Calculate Area')),gap(),
  if(area!=null)Text('Area = $area',textAlign:TextAlign.center,style:const TextStyle(fontSize:24,fontWeight:FontWeight.bold))
 ]);
}
// 25. Student Result Application: name, 3 marks, total, percentage, and Pass/Fail.
import 'package:flutter/material.dart';
Widget page(String title,List<Widget> x)=>MaterialApp(
 debugShowCheckedModeBanner:false,
 theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.green),
 home:Scaffold(appBar:AppBar(title:Text(title),centerTitle:true),
 body:Align(alignment:Alignment.topCenter,child:SingleChildScrollView(padding:const EdgeInsets.fromLTRB(24,18,24,24),
 child:ConstrainedBox(constraints:const BoxConstraints(maxWidth:420),child:Column(mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.stretch,children:x))))));
InputDecoration d(String s)=>InputDecoration(labelText:s,border:const OutlineInputBorder());
Widget gap()=>const SizedBox(height:14);

void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{
 final n=TextEditingController(),a=TextEditingController(),b=TextEditingController(),c=TextEditingController();String out='';
 double v(TextEditingController x)=>double.tryParse(x.text)??0;
 void result(){double m1=v(a),m2=v(b),m3=v(c),total=m1+m2+m3,p=total/3;
  setState(()=>out='${n.text}\nTotal: $total / 300\nPercentage: ${p.toStringAsFixed(2)}%\nResult: ${m1>=40&&m2>=40&&m3>=40?'PASS':'FAIL'}');}
 Widget build(x)=>page('Student Result',[
  TextField(controller:n,decoration:d('Student name')),gap(),
  ...[a,b,c].asMap().entries.expand((e)=>[TextField(controller:e.value,keyboardType:TextInputType.number,decoration:d('Subject ${e.key+1} marks')),gap()]),
  FilledButton.icon(onPressed:result,icon:const Icon(Icons.calculate),label:const Text('Show Result')),gap(),
  if(out.isNotEmpty)Container(padding:const EdgeInsets.all(18),decoration:BoxDecoration(color:Colors.indigo.shade50,borderRadius:BorderRadius.circular(12)),
   child:Text(out,textAlign:TextAlign.center,style:const TextStyle(fontSize:19,fontWeight:FontWeight.bold)))
 ]);
}
// 13. Calculate BMI using height and weight entered by the user.
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
 final h=TextEditingController(),w=TextEditingController();double? bmi;
 Widget build(x)=>page('BMI Calculator',[
  TextField(controller:h,keyboardType:TextInputType.number,decoration:d('Height in metres')),gap(),
  TextField(controller:w,keyboardType:TextInputType.number,decoration:d('Weight in kg')),gap(),
  FilledButton(onPressed:(){double a=double.tryParse(h.text)??0,b=double.tryParse(w.text)??0;setState(()=>bmi=a==0?0:b/(a*a));},child:const Text('Calculate BMI')),gap(),
  if(bmi!=null)Text('BMI = ${bmi!.toStringAsFixed(2)}',textAlign:TextAlign.center,style:const TextStyle(fontSize:24,fontWeight:FontWeight.bold))
 ]);
}
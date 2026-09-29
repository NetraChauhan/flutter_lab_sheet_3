// 14. Checkbox to select whether the user agrees to the terms and conditions.
import 'package:flutter/material.dart';
Widget page(String title,List<Widget> x)=>MaterialApp(
 debugShowCheckedModeBanner:false,
 theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.green),
 home:Scaffold(appBar:AppBar(title:Text(title),centerTitle:true),
 body:Align(alignment:Alignment.topCenter,child:SingleChildScrollView(padding:const EdgeInsets.fromLTRB(24,18,24,24),
 child:ConstrainedBox(constraints:const BoxConstraints(maxWidth:420),child:Container(padding:const EdgeInsets.all(22),decoration:BoxDecoration(color:Colors.green.shade50,borderRadius:BorderRadius.circular(18)),child:Column(mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.stretch,children:x)))))));
InputDecoration d(String s)=>InputDecoration(labelText:s,border:const OutlineInputBorder());
Widget gap()=>const SizedBox(height:14);

void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{
 bool agree=false;
 Widget build(x)=>page('Terms & Conditions',[
  CheckboxListTile(contentPadding:EdgeInsets.zero,title:const Text('I agree to the Terms and Conditions'),
   subtitle:Text(agree?'You have agreed':'Please accept to continue'),value:agree,onChanged:(v)=>setState(()=>agree=v??false)),
  gap(),
  Icon(agree?Icons.check_circle:Icons.info_outline,size:44,color:agree?Colors.green:Colors.indigo)
 ]);
}
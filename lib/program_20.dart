// 20. Application containing Checkbox, Radio, DropdownButton, and Switch widgets.
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
 bool terms=false,on=false;String gender='Male',sem='1st';
 Widget build(x)=>page('Input Widgets',[
  const Text('Checkbox',style:TextStyle(fontWeight:FontWeight.bold)),
  CheckboxListTile(contentPadding:EdgeInsets.zero,title:const Text('Accept Terms'),value:terms,onChanged:(v)=>setState(()=>terms=v!)),
  const Divider(),const Text('Radio Buttons',style:TextStyle(fontWeight:FontWeight.bold)),
  Row(children:['Male','Female'].map((g)=>Expanded(child:RadioListTile(contentPadding:EdgeInsets.zero,value:g,groupValue:gender,title:Text(g),onChanged:(v)=>setState(()=>gender=v!)))).toList()),
  const Divider(),DropdownButtonFormField<String>(value:sem,decoration:d('Semester'),
   items:['1st','2nd','3rd'].map((s)=>DropdownMenuItem(value:s,child:Text(s))).toList(),onChanged:(v)=>setState(()=>sem=v!)),
  gap(),SwitchListTile(contentPadding:EdgeInsets.zero,title:const Text('Notifications'),value:on,onChanged:(v)=>setState(()=>on=v))
 ]);
}
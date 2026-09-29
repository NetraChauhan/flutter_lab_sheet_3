// 22. Registration Form UI with name, email, password, gender, course, and Register button.
import 'package:flutter/material.dart';
Widget page(String title,List<Widget> x)=>MaterialApp(
 debugShowCheckedModeBanner:false,
 theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.pink),
 home:Scaffold(appBar:AppBar(title:Text(title),centerTitle:true),
 body:Align(alignment:Alignment.topCenter,child:SingleChildScrollView(padding:const EdgeInsets.fromLTRB(24,18,24,24),
 child:ConstrainedBox(constraints:const BoxConstraints(maxWidth:420),child:Container(padding:const EdgeInsets.all(22),decoration:BoxDecoration(color:Colors.pink.shade50,borderRadius:BorderRadius.circular(18)),child:Column(mainAxisSize:MainAxisSize.min,crossAxisAlignment:CrossAxisAlignment.stretch,children:x)))))));
InputDecoration d(String s)=>InputDecoration(labelText:s,border:const OutlineInputBorder());
Widget gap()=>const SizedBox(height:14);

void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{
 final n=TextEditingController(),e=TextEditingController(),p=TextEditingController();
 String gender='Male',course='BCA',msg='';
 Widget build(x)=>page('Registration Form',[
  TextField(controller:n,decoration:d('Name')),gap(),
  TextField(controller:e,decoration:d('Email')),gap(),
  TextField(controller:p,obscureText:true,decoration:d('Password')),gap(),
  const Text('Gender',style:TextStyle(fontWeight:FontWeight.bold)),
  Row(children:['Male','Female'].map((g)=>Expanded(child:RadioListTile(contentPadding:EdgeInsets.zero,value:g,groupValue:gender,title:Text(g),onChanged:(v)=>setState(()=>gender=v!)))).toList()),
  DropdownButtonFormField<String>(value:course,decoration:d('Course'),
   items:['BCA','BBA','B.Tech'].map((s)=>DropdownMenuItem(value:s,child:Text(s))).toList(),onChanged:(v)=>setState(()=>course=v!)),gap(),
  FilledButton.icon(onPressed:()=>setState(()=>msg='${n.text} registered for $course'),icon:const Icon(Icons.app_registration),label:const Text('Register')),gap(),
  if(msg.isNotEmpty)Text(msg,textAlign:TextAlign.center,style:const TextStyle(fontWeight:FontWeight.bold))
 ]);
}
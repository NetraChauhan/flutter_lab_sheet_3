// 20. Application containing Checkbox, Radio, DropdownButton, and Switch widgets.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{bool check=false,on=false;String gender='Male',sem='1st';
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,home:Scaffold(appBar:AppBar(title:const Text('Input Widgets')),body:Padding(
padding:const EdgeInsets.all(20),child:Column(children:[
CheckboxListTile(title:const Text('Accept Terms'),value:check,onChanged:(v)=>setState(()=>check=v!)),
Row(children:['Male','Female'].map((g)=>Expanded(child:RadioListTile(value:g,groupValue:gender,title:Text(g),onChanged:(v)=>setState(()=>gender=v!)))).toList()),
DropdownButton(value:sem,items:['1st','2nd','3rd'].map((x)=>DropdownMenuItem(value:x,child:Text(x))).toList(),onChanged:(v)=>setState(()=>sem=v!)),
SwitchListTile(title:const Text('Notifications'),value:on,onChanged:(v)=>setState(()=>on=v))
]))));}
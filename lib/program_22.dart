// 22. Registration Form UI with name, email, password, gender, course, and Register button.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final n=TextEditingController(),e=TextEditingController(),p=TextEditingController();String gender='Male',course='BCA',msg='';
Widget build(c)=>MaterialApp(home:Scaffold(appBar:AppBar(title:const Text('Registration Form')),body:SingleChildScrollView(
padding:const EdgeInsets.all(20),child:Column(children:[
TextField(controller:n,decoration:const InputDecoration(labelText:'Name')),
TextField(controller:e,decoration:const InputDecoration(labelText:'Email')),
TextField(controller:p,obscureText:true,decoration:const InputDecoration(labelText:'Password')),
Row(children:['Male','Female'].map((g)=>Expanded(child:RadioListTile(value:g,groupValue:gender,title:Text(g),onChanged:(v)=>setState(()=>gender=v!)))).toList()),
DropdownButton(value:course,items:['BCA','BBA','B.Tech'].map((x)=>DropdownMenuItem(value:x,child:Text(x))).toList(),onChanged:(v)=>setState(()=>course=v!)),
ElevatedButton(onPressed:()=>setState(()=>msg='Registered: ${n.text}'),child:const Text('Register')),Text(msg)
]))));}
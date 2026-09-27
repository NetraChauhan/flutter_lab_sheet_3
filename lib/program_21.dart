// 21. Login Form UI with username, password, Login button, and Reset button.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final u=TextEditingController(),p=TextEditingController();String msg='';
Widget build(c)=>MaterialApp(home:Scaffold(appBar:AppBar(title:const Text('Login Form')),body:Padding(
padding:const EdgeInsets.all(24),child:Column(children:[
TextField(controller:u,decoration:const InputDecoration(labelText:'Username')),
TextField(controller:p,obscureText:true,decoration:const InputDecoration(labelText:'Password')),
Row(children:[ElevatedButton(onPressed:()=>setState(()=>msg='Login submitted'),child:const Text('Login')),const SizedBox(width:10),
ElevatedButton(onPressed:(){u.clear();p.clear();setState(()=>msg='');},child:const Text('Reset'))]),Text(msg)
]))));}
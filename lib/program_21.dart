// 21. Login Form UI with username, password, Login button, and Reset button.
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
 final u=TextEditingController(),p=TextEditingController();String msg='';
 Widget build(x)=>page('Login Form',[
  const Icon(Icons.account_circle,size:64,color:Colors.indigo),gap(),
  TextField(controller:u,decoration:d('Username')),gap(),
  TextField(controller:p,obscureText:true,decoration:d('Password')),gap(),
  Row(children:[
   Expanded(child:FilledButton(onPressed:()=>setState(()=>msg='Login submitted'),child:const Text('Login'))),
   const SizedBox(width:12),
   Expanded(child:OutlinedButton(onPressed:(){u.clear();p.clear();setState(()=>msg='');},child:const Text('Reset')))
  ]),gap(),
  if(msg.isNotEmpty)Text(msg,textAlign:TextAlign.center,style:const TextStyle(fontWeight:FontWeight.bold))
 ]);
}
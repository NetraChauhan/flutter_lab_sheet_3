// 19. Switch to turn a setting ON and OFF.
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
 bool on=false;
 Widget build(x)=>page('Switch Setting',[
  SwitchListTile(contentPadding:EdgeInsets.zero,title:const Text('Notifications'),
   subtitle:Text(on?'Notifications are ON':'Notifications are OFF'),value:on,onChanged:(v)=>setState(()=>on=v)),
  gap(),Icon(on?Icons.notifications_active:Icons.notifications_off,size:48,color:on?Colors.indigo:Colors.grey)
 ]);
}
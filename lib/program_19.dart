// 19. Switch to turn a setting ON and OFF.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{bool on=false;
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,home:Scaffold(body:Center(child:SwitchListTile(
title:const Text('Notifications'),value:on,onChanged:(v)=>setState(()=>on=v),
subtitle:Text(on?'Setting is ON':'Setting is OFF')))));}
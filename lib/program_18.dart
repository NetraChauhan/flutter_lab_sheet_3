// 18. DropdownButton to select a department.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{String dept='Computer Applications';
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,home:Scaffold(body:Center(child:Column(mainAxisSize:MainAxisSize.min,children:[
const Text('Select Department'),
DropdownButton(value:dept,items:['Computer Applications','Management','Engineering'].map((x)=>DropdownMenuItem(value:x,child:Text(x))).toList(),onChanged:(v)=>setState(()=>dept=v!)),
Text('Selected: $dept')]))));}
// 17. DropdownButton to select a semester.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{String sem='1st';
Widget build(c)=>MaterialApp(home:Scaffold(body:Center(child:Column(mainAxisSize:MainAxisSize.min,children:[
const Text('Select Semester'),
DropdownButton(value:sem,items:['1st','2nd','3rd','4th','5th','6th'].map((x)=>DropdownMenuItem(value:x,child:Text(x))).toList(),onChanged:(v)=>setState(()=>sem=v!)),
Text('Selected: $sem')]))));}
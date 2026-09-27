// 14. Checkbox to select whether the user agrees to the terms and conditions.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{bool agree=false;
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData(useMaterial3:true,colorSchemeSeed:Colors.indigo),home:Scaffold(body:Center(child:CheckboxListTile(
title:const Text('I agree to the Terms and Conditions'),value:agree,onChanged:(v)=>setState(()=>agree=v??false),
subtitle:Text(agree?'Agreed':'Not agreed')))));}
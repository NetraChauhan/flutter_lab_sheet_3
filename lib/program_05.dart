// 5. ElevatedButton displays a message using SnackBar.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{const MyApp({super.key});
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,home:Scaffold(appBar:AppBar(title:const Text('SnackBar')),body:Builder(builder:(c)=>Center(
child:ElevatedButton(onPressed:()=>ScaffoldMessenger.of(c).showSnackBar(const SnackBar(content:Text('Button Pressed!'))),child:const Text('Show Message'))))));}
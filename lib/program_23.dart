// 23. Student Feedback Form with name, rating options, feedback field, and Submit button.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final n=TextEditingController(),f=TextEditingController();int rating=3;String msg='';
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,home:Scaffold(appBar:AppBar(title:const Text('Student Feedback')),body:Padding(
padding:const EdgeInsets.all(20),child:Column(children:[
TextField(controller:n,decoration:const InputDecoration(labelText:'Name')),
const Text('Rating'),
Wrap(children:[1,2,3,4,5].map((r)=>ChoiceChip(label:Text('$r'),selected:rating==r,onSelected:(_)=>setState(()=>rating=r))).toList()),
TextField(controller:f,maxLines:3,decoration:const InputDecoration(labelText:'Feedback')),
ElevatedButton(onPressed:()=>setState(()=>msg='Feedback submitted - Rating: $rating'),child:const Text('Submit')),Text(msg)
]))));}
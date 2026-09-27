// 13. Calculate BMI using height and weight entered by the user.
import 'package:flutter/material.dart';
void main()=>runApp(const MyApp());
class MyApp extends StatefulWidget{const MyApp({super.key});State<MyApp> createState()=>_S();}
class _S extends State<MyApp>{final h=TextEditingController(),w=TextEditingController();double bmi=0;
Widget build(c)=>MaterialApp(debugShowCheckedModeBanner:false,home:Scaffold(body:Padding(padding:const EdgeInsets.all(24),child:Column(children:[
TextField(controller:h,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'Height (m)')),
TextField(controller:w,keyboardType:TextInputType.number,decoration:const InputDecoration(labelText:'Weight (kg)')),
ElevatedButton(onPressed:(){double x=double.tryParse(h.text)??0,y=double.tryParse(w.text)??0;setState(()=>bmi=x==0?0:y/(x*x));},child:const Text('Calculate BMI')),
Text('BMI = ${bmi.toStringAsFixed(2)}')]))));}
import 'package:flutter/material.dart';

 void main(){
  runApp(const MaterialApp (title: "App1",
      home: telaDois(),));

 }
 class telaDois extends StatelessWidget {
 const telaDois({super.key});

@override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(179, 146, 85, 10),
    );
    
 
 }}
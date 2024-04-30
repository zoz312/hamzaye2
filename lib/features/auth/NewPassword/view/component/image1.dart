 import 'package:flutter/material.dart';
 class image5 extends StatelessWidget {
   const image5({super.key});
 
   @override
   Widget build(BuildContext context) {
     return   Container(
            
            height:MediaQuery.of(context).size.height/5,
            child: Image.asset("assets/en.jpg"))
            ;
   }
 }
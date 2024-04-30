 import 'package:flutter/material.dart';
 class image3 extends StatelessWidget {
   const image3({super.key});
 
   @override
   Widget build(BuildContext context) {
     return   Container(
            
            height:MediaQuery.of(context).size.height/5,
            child: Image.asset("assets/en.jpg"))
            ;
   }
 }
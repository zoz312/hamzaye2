 import 'package:flutter/material.dart';
 class ButtonNewPass extends StatelessWidget {
   const ButtonNewPass({super.key});
 
   @override
   Widget build(BuildContext context) {
     return
 
 Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: FilledButton(
          onPressed: () {
          
          
          },
          child: Text(
            " Submit",
            style: TextStyle(color: Color(0xffFFF2BC), fontSize: 18),
          ),
          style:ButtonStyle(
              backgroundColor:MaterialStatePropertyAll( Color(0xffD84012)),
             
              padding:MaterialStatePropertyAll( EdgeInsets.symmetric(horizontal: 100, vertical: 11)),
              shape:MaterialStatePropertyAll( RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)))
                  )),
    );
   }
 }
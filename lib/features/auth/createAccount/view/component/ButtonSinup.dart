import 'package:flutter/material.dart';

class  ButtonSinup extends StatelessWidget {
  const  ButtonSinup({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: FilledButton(
          onPressed: () {
          
          
          },
          child: Text(
            "Sin up",
            style: TextStyle(color:Color(0xffFFF2BC), fontSize: 18),
          ),
          style:ButtonStyle(
              backgroundColor:MaterialStatePropertyAll( Color(0xffD84012)),
             
              padding:MaterialStatePropertyAll( EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/30 , vertical:MediaQuery.of(context).size.height/80)),
              shape:MaterialStatePropertyAll( RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))))),
    )
         
        ;
  }
}
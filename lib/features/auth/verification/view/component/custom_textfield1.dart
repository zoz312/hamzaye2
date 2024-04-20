import 'package:flutter/material.dart';

import '../../../../../core/validation.dart';



// ignore: must_be_immutable, camel_case_types
class custom_textfield1 extends StatelessWidget {
   custom_textfield1({super.key});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 50,
      margin: const EdgeInsets.only(right: 10),
      child: TextFormField(
      decoration: const InputDecoration(
       enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(251, 235, 175, 9),
          )
        ),
    focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(251, 235, 175, 9),
                            width: 3,
                          ),
                          
                          ),
        errorBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red
          )
        ), 
      ),
      validator: validation().validat1,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller:controller ,
      maxLength: 1,
    ),
    ) ;
  }
}
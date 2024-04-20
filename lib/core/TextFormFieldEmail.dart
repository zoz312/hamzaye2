import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Emailvaild.dart'; 

class TextFormFieldEmail extends StatelessWidget {
  const TextFormFieldEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        TextFormField(
                 inputFormatters: [FilteringTextInputFormatter.allow(RegExp (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+com"))], 
                  controller: TextEditingController(),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    
                    labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                    suffixIcon: Icon(Icons.email),
                    iconColor: Colors.black,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      
                          borderSide: BorderSide(
                            color: const Color(0xffD84012),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10)
                    ),
                      hintStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xffD84012),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xffD84012),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:Colors.red,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Enter your email"),
                 validator:EmailVaild().myVaild,
                )
     ;
  }
}
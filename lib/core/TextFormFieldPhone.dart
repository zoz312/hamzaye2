import 'package:flutter/material.dart';

import 'PhoneVild.dart';
class TextFormFieldPhone extends StatelessWidget {
  const TextFormFieldPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return     TextFormField(
          
              keyboardType: TextInputType.phone,
                  controller: TextEditingController(),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    label: Text("Phone Number"),
                    labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                    suffixIcon: Icon(Icons.phone),
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
                            color: Color(0xffD84012),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color:Colors.red,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Enter your phone number"),
                 validator:PhoneVaild().myVaild,
                )
       
    ;
  }
}
import 'package:flutter/material.dart';

import 'MyVaidPass.dart';
class TextFormFieldPassword extends StatelessWidget {
  const TextFormFieldPassword({super.key, required this.text});
final String text ;
  @override
  Widget build(BuildContext context) {
    return    TextFormField(
              controller: TextEditingController(),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.password),
                iconColor: Colors.black,
                  filled: true,
                  labelText: "$text",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                  hintStyle: TextStyle(color: Colors.black,),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    
                      borderSide: BorderSide(
    
                        color: const Color(0xffD84012),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  border: OutlineInputBorder(
    
                      borderSide: BorderSide(
                        
                        color: const Color.fromARGB(251, 235, 175, 9),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                    
                      borderSide: BorderSide(
                        color: Color.fromARGB(251, 235, 175, 9),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter your Password"),
                  validator:PassVaild().myVaild,
            )
    
        ;
  }
}
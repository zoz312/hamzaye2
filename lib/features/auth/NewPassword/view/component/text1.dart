import 'package:flutter/material.dart';

class text1 extends StatelessWidget {
  const text1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text("Password must be at least 8 characters long.Password must contain at least one upper case.One lower case letter.Password must contain at least one number or special character"
    ,style: TextStyle(fontSize: 22),)
            ;
  }
}
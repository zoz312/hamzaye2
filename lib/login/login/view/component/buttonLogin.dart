import 'package:flutter/material.dart';


class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  
       FilledButton(
          onPressed: () {
          
          
          },
          child: Text(
            "Login",
            style: TextStyle(color:Color(0xffFFF2BC), fontSize: 18),
          ),
          style:ButtonStyle(
              backgroundColor:MaterialStatePropertyAll( Color(0xffD84012)),
             
              shape:MaterialStatePropertyAll( RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)))))
    ;
  }
}
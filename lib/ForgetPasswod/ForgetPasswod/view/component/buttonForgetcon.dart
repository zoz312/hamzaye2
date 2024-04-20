import 'package:flutter/material.dart';

class buttonForgetcon extends StatelessWidget {
  const buttonForgetcon({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: () {
          Navigator.pushNamed(context, 'ver');
        },
        child: Text(
          "Confim",
          style: TextStyle(color: Color(0xffFFF2BC), fontSize: 18),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Color(0xffD84012)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)))));
  }
}

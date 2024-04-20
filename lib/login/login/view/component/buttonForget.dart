import 'package:flutter/material.dart';

class forgetButton extends StatelessWidget {
  const forgetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pushNamed(context, 'forget');
        },
        child: Text(
          "Forget Passwod ?",
          style: TextStyle(
              fontSize: 18,
              color: Color(0xffD84012),
              decoration: TextDecoration.underline),
        ));
  }
}

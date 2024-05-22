import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        onPressed: () {
          Navigator.pushNamed(context, 'np');
        },
        child: Text(
          "Login",
          style:
              TextStyle(color: Theme.of(context).backgroundColor, fontSize: 18),
        ),
        style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(Theme.of(context).cardColor),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)))));
  }
}

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
          style: TextStyle(color: Theme.of(context).backgroundColor, fontSize: 18),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Theme.of(context).cardColor),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)))));
  }
}

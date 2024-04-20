import 'package:flutter/material.dart';

class RowLogin extends StatelessWidget {
  const RowLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Create An Account?",
          style: TextStyle(fontSize: 18.0),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'create');
            },
            child: Text(
              "Sign up",
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xffD84012),
                  decoration: TextDecoration.underline),
            ))
      ],
    );
  }
}

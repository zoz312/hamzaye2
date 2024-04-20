import 'package:flutter/material.dart';
import 'package:hamzawyapp/core/image1.dart';

import 'custom_textfield1.dart';

// ignore: camel_case_types
class body_verification extends StatelessWidget {
  const body_verification({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 70,
        ),
        image1(),
        Center(
          child: const Text(
            'Verify your Phone',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [...List.generate(4, (index) => custom_textfield1())],
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 99),
          child: MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'newpass');
            },
            color: Color(0xffD84012),
            minWidth: 100,
            height: 50,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
            child: const Text(
              'Ok',
              style: TextStyle(fontSize: 20, color: Color(0xffFFF2BC)),
            ),
          ),
        ),
      ],
    );
  }
}

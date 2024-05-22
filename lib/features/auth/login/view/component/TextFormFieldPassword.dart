import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/login/controller/cubit/login_cubit.dart';
import 'package:hamzawyapp/features/auth/login/view/page/LoginPage.dart';

import '../../../../../core/MyVaidPass.dart';


class TextFormFieldPassword2 extends StatelessWidget {
  TextFormFieldPassword2(
      {super.key, required this.text, required this.controller});
  final String text;
  LoginCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>.value(
      value: controller,
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return TextFormField(
            strutStyle: StrutStyle(height:MediaQuery.of(context).size.height/500 ),
            controller: controller.password,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: true,
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.password),
                iconColor: Colors.black,
                filled: true,
                labelText: "$text",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(color: const Color.fromARGB(255, 70, 70, 70), fontSize: 20),
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).cardColor,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).cardColor,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).cardColor,
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
            validator: PassVaild().myVaild,
          );
        },
      ),
    );
  }
}

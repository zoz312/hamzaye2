import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/NewPassword/controller/cubit/newpass_cubit.dart';
import 'package:hamzawyapp/features/auth/NewPassword/view/page/NewPassword.dart';



import '../../../../../core/MyVaidPass.dart';


class TextFormFieldPassword3 extends StatelessWidget {
  TextFormFieldPassword3(
      {super.key, required this.text, required this.controller});
  final String text;
  NewpassCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewpassCubit>.value(
      value: controller,
      child: BlocBuilder<NewpassCubit, NewpassState>(
        builder: (context, state) {
          return TextFormField(
            controller: controller.password,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: true,
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.password),
                iconColor: Colors.black,
                filled: true,
                labelText: "$text",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
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
            validator: PassVaild().myVaild,
          );
        },
      ),
    );
  }
}

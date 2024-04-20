import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/login/controller/cubit/login_cubit.dart';
import 'package:hamzawyapp/features/auth/login/view/page/LoginPage.dart';

import '../../../../../core/PhoneVild.dart';


class TextFormFieldPhone2 extends StatelessWidget {
  TextFormFieldPhone2({super.key, required this.controller});
  LoginCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>.value(
      value: controller,
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return TextFormField(
            keyboardType: TextInputType.phone,
            controller: controller.phone,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                label: Text("Phone Number"),
                labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                suffixIcon: Icon(Icons.phone),
                iconColor: Colors.black,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xffD84012),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                hintStyle: TextStyle(color: Colors.black),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xffD84012),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffD84012),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                hintText: "Enter your phone number"),
            validator: PhoneVaild().myVaild,
          );
        },
      ),
    );
  }
}

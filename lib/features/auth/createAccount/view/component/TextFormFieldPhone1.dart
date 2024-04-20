import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/createAccount/controller/cubit/create_account_cubit.dart';

import '../../../../../core/PhoneVild.dart';

class TextFormFieldPhone1 extends StatelessWidget {
  TextFormFieldPhone1({super.key, required this.controller});
  CreateAccountCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateAccountCubit>.value(
      value: controller,
      child: BlocBuilder<CreateAccountCubit, CreateAccountState>(
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

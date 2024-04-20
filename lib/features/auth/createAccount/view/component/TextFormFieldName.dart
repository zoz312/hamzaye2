import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/NameVaild.dart';
import '../../controller/cubit/create_account_cubit.dart';

class TextFormFieldName extends StatelessWidget {
  TextFormFieldName({super.key, required this.controller});
  CreateAccountCubit controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: BlocProvider(
        create: (context) => CreateAccountCubit(),
        child: BlocBuilder<CreateAccountCubit, CreateAccountState>(
          builder: (context, state) {
            return TextFormField(
              controller: controller.phone,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                  label: Text("Name"),
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                  suffixIcon: Icon(Icons.person),
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
                        color: const Color(0xffD84012),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter your Name"),
              validator: NameVaild().myVaild,
            );
          },
        ),
      ),
    );
  }
}

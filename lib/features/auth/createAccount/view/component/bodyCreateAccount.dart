import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/createAccount/view/component/TextFormFieldPhone1.dart';

import '../../../../../core/TextFormFieldEmail.dart';
import '../../../../../core/TextFormFieldPassword.dart';
import '../../../../../core/TextFormFieldPhone.dart';
import '../../../../../core/image1.dart';
import '../../controller/cubit/create_account_cubit.dart';
import 'ButtonSinup.dart';
import 'TextFormFieldEmail1.dart';
import 'TextFormFieldName.dart';
import 'TextFormFieldPassword1.dart';

class BodyCreateAccount extends StatelessWidget {
  BodyCreateAccount({super.key, required this.controller});
  CreateAccountCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateAccountCubit>.value(
      value: controller,
      child: BlocBuilder<CreateAccountCubit, CreateAccountState>(
        builder: (context, state) {
          return ListView(
            children: [
              image1(),
              TextFormFieldName(
                controller: controller,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldPhone1(
                controller: controller,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldEmail1(
                controller: controller,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldPassword1(
                text: "Password",
                controller: controller,
              ),
              SizedBox(
                height: 20,
              ),
              ButtonSinup(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "have an Account ?",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xffD84012),
                            decoration: TextDecoration.underline),
                      ))
                ],
              )
            ],
          );
        },
      ),
    );
  }
}

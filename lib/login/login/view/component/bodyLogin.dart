import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ozoo/core/TextFormFieldPassword.dart';
import 'package:flutter_ozoo/core/image1.dart';
import 'package:flutter_ozoo/login/login/controller/cubit/login_cubit.dart';
import 'package:flutter_ozoo/login/login/view/component/TextFormFieldEmail.dart';
import 'package:flutter_ozoo/login/login/view/component/TextFormFieldPhone.dart';
import 'package:flutter_ozoo/login/login/view/component/rowlogin.dart';

import 'TextFormFieldPassword.dart';
import 'buttonForget.dart';
import 'buttonLogin.dart';

class bodyLogin extends StatelessWidget {
  bodyLogin({super.key, required this.controller});
  LoginCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>.value(
      value: controller,
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return Container(
            color: const Color(0xffFFF2BC),
            padding: const EdgeInsets.all(20.0),
            child: TabBarView(
              children: [
                Form(
                    child: ListView(
                  children: [
                    image1(),
                    TextFormFieldPhone2(controller: controller,),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormFieldPassword(text: 'password'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        forgetButton(),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    LoginButton(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    RowLogin()
                  ],
                )),
                Form(
                    child: ListView(
                  children: [
                    image1(),
                    TextFormFieldEmail2(controller: controller,),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormFieldPassword2(text: "Password",controller: controller,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        forgetButton(),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    LoginButton(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    RowLogin()
                  ],
                )),
              ],
            ),
          );
        },
      ),
    );
    ;
  }
}

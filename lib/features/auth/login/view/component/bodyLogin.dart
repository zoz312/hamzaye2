import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/login/controller/cubit/login_cubit.dart';
import 'package:hamzawyapp/features/auth/login/view/component/TextFormFieldEmail.dart';
import 'package:hamzawyapp/features/auth/login/view/component/TextFormFieldPhone.dart';
import 'package:hamzawyapp/features/auth/login/view/component/rowlogin.dart';
import 'package:hamzawyapp/features/auth/login/view/page/LoginPage.dart';

import '../../../../../core/TextFormFieldEmail.dart';
import '../../../../../core/TextFormFieldPassword.dart';
import '../../../../../core/TextFormFieldPhone.dart';
import 'image1.dart';
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
            color:           
            Theme.of(context).backgroundColor,
            padding: const EdgeInsets.all(20.0),
            child: TabBarView(
              children: [
                Form(
                    child: ListView(
                  children: [
                   
                    TextFormFieldPhone2(controller: controller,),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormFieldPassword2(text: 'password', controller: controller,),
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
                     SizedBox(
                     height:MediaQuery.of(context).size.height/30, 
                    ),
                    RowLogin()
                  ],
                )),
                Form(
                    child: ListView(
                  children: [
                  
                    TextFormFieldEmail2(controller: controller,),
                     SizedBox(
                      height:MediaQuery.of(context).size.height/30, 
                    ),
                    TextFormFieldPassword2(text: "Password",controller: controller,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        forgetButton(),
                      ],
                    ),
                     SizedBox(
                      height:MediaQuery.of(context).size.height/30, 
                    ),
                    LoginButton(),
                     SizedBox(
                      height:MediaQuery.of(context).size.height/30, 
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

import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/login/controller/cubit/login_cubit.dart';

import 'package:hamzawyapp/features/auth/login/view/component/bodyLogin.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          final LoginCubit controller = context.read<LoginCubit>();
          return DefaultTabController(
              length: 2,
              child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Color(0xffD84012),
                    title: const Text(
                      "Login",
                      style: TextStyle(color: Color(0xffFFF2BC)),
                    ),
                    bottom: const TabBar(
                      labelColor: Color(0xffFFF2BC),
                      unselectedLabelColor: Color(0xffFFF2BC),
                      indicatorColor: Color(0xffFFF2BC),
                      indicatorWeight: 7,
                      tabs: [
                        Tab(
                          icon: Icon(Icons.phone),
                          text: "Phone",
                        ),
                        Tab(
                          icon: Icon(Icons.email),
                          text: "Gmail",
                        ),
                      ],
                    ),
                  ),
                  body: bodyLogin(controller: controller,)));
        },
      ),
    );
  }
}

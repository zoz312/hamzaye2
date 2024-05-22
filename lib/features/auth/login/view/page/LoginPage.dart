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
                                    backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            
                    title:  Text(
                      "Login",
                      style: Theme.of(context).appBarTheme.titleTextStyle,
                    ),
                    bottom:  TabBar(
                      labelColor: Theme.of(context).backgroundColor,
                      unselectedLabelColor: Theme.of(context).backgroundColor,
                      indicatorColor: Theme.of(context).backgroundColor,
                      indicatorWeight: 5,
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
